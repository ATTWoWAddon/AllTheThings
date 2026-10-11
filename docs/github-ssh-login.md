# GitHub SSH Login Guide

This guide helps you connect to GitHub with an SSH key so you can clone, pull, and push repositories. A registered public key identifies your account; your client uses the protected private key to prove possession. Authentication is separate from repository permissions and commit signing.

**Quantum computing (QC) risk notice.** A sufficiently large, fault-tolerant quantum computer could break RSA, DSA, ECDSA, and Ed25519 signatures; this does not mean they are currently broken ([NIST analysis, draft](https://nvlpubs.nist.gov/nistpubs/ir/2024/NIST.IR.8547.ipd.pdf)). Hybrid post-quantum (PQ) key exchange does not make SSH authentication post-quantum. Keep platform-compatible keys until a supported migration is verified; see the [post-quantum cryptography (PQC) appendix](#appendix--post-quantum-cryptography-pqc).

**Step-by-step draft · macOS and Windows 11 · Official documentation checked October 10, 2026**

**Recommendation — Use separate SSH key pairs (linked public and private keys) for login and commit signing.** Separate keys let you revoke and rotate each independently and manage their intended uses separately. This is a recommendation, not a GitHub requirement. For commit signing, see the companion [**GitHub Commit Signing Guide**](github-commit-signing.md).

These are setup instructions, not a record of changes to your keys or account settings. Examples follow official documentation; the workflow and 1Password import were not tested for this guide. Replace uppercase placeholders with your values. See the [SSH login terminology appendix](#appendix--ssh-login-terminology) for definitions.

## Choose one key source

Choose once. Read the key-choice guidance and check the tools below, then open only your selected route, complete it in order, and continue to the shared completion steps. Native ssh-agent (a background program that handles key-use requests), macOS Keychain (the system's protected credential store), global defaults, and GitHub's command-line interface (CLI) are optional conveniences.

| Your key source | Follow this route |
| --- | --- |
| You need a new local key pair. | [Route A — New local key](#route-a--new-local-key) |
| You already have a suitable local private key and matching public key. | [Route B — Existing local key](#route-b--existing-local-key) |
| You want an SSH Key item held in 1Password. | [Route C — 1Password](#route-c--1password) |

Local-file routes use the private file directly and require no agent. Route C requires 1Password's supported agent/client integration and keeps the private key in 1Password.

### Key choice for this workflow

**For new keys, prefer Ed25519 with compatible tools.** RSA 4096 is a compatibility alternative. This guide recommends at least 128 bits of classical security for new keys; a stricter organization policy takes precedence. This is a recommendation, not a universal GitHub requirement or a claim that suitable existing RSA 2048 keys are immediately unsafe.

ECDSA is available for local-file use with compatible tools; 1Password does not support it. ~~DSA~~ (`ssh-dss`) is unsupported by GitHub; do not generate it for SSH use. See the [key reference](#appendix--ssh-key-types-and-sizes) for sizes, strength comparisons, and the RSA generation command.

An `ssh-rsa` public-key prefix identifies RSA, not SHA-1. Use `rsa-sha2-256` or `rsa-sha2-512` for authentication ([RSA distinction](https://github.blog/changelog/2026-09-22-security-improvements-for-ssh/)). Policy history and future dates are in the [SSH policy appendix](#appendix--github-ssh-key-policy-and-migration-dates).

### Check the tools before your route

In a terminal on macOS or PowerShell on Windows 11:

```sh
git --version
ssh -V
```

**Expected result:** identify the Git and SSH clients. Client-selection issues are covered in the [compatibility appendix](#appendix--client-compatibility-and-organization-access).

Source: [OpenSSH client](https://man.openbsd.org/ssh).

## Route A — New local key

### A1 — Prepare the key pair

Inspect existing filenames before creating a new key. Do not print private-key contents.

macOS:

```sh
command -v ssh
ls -al "$HOME/.ssh"
mkdir -p "$HOME/.ssh"
```

PowerShell:

```powershell
Get-Command ssh, ssh-keygen
Get-ChildItem -Force "$HOME/.ssh"
New-Item -ItemType Directory -Force "$HOME/.ssh" | Out-Null
```

Generate the pair and view its public fingerprint in either shell:

```sh
ssh-keygen -t ed25519 -C "YOUR_EMAIL_OR_LABEL" -f "$HOME/.ssh/id_ed25519_github"
ssh-keygen -lf "$HOME/.ssh/id_ed25519_github.pub"
```

Choose a strong passphrase and cancel any overwrite prompt. `id_ed25519_github` is private; `.pub` is public. Protect the private file from other users; do not weaken permissions to silence an error. `-C` is only a label; it need not be a verified GitHub email. Commit email is a separate setting.

For the RSA alternative, use the [RSA command](#appendix--ssh-key-types-and-sizes) instead and replace `id_ed25519_github` with `id_rsa_github` throughout this route, including `.pub` paths.

**Expected result:** a usable protected private file and its matching public file.

Source: [GitHub key generation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

### A2 — Register the public Authentication key

Copy only the public key:

```sh
# macOS: PUBLIC key only
pbcopy < "$HOME/.ssh/id_ed25519_github.pub"
```

```powershell
# PowerShell: PUBLIC key only
Get-Content "$HOME/.ssh/id_ed25519_github.pub" | Set-Clipboard
```

Open [GitHub SSH key settings](https://github.com/settings/keys), choose **New SSH key**, give it a device/purpose title, select **Authentication key**, and paste the whole public-key line. Never upload the private file.

**Expected result:** your public key is an Authentication key on the intended GitHub account.

Source: [adding SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

### A3 — Configure direct-file use for SSH and Git

Merge this into `~/.ssh/config` on macOS or `$HOME\.ssh\config` in PowerShell. The filename has no `.txt` suffix. Preserve existing configuration and reconcile any existing GitHub/1Password entry instead of appending duplicate settings.

```sshconfig
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_github
  IdentitiesOnly yes
  IdentityAgent none
```

`IdentityFile` selects the **private file**, not `.pub`. `IdentityAgent none` disables agent use for this host; it does not bypass host verification. An encrypted file needs its passphrase, potentially on every connection. The host entry lets SSH and Git select the same identity without repeating `-i`.

**Expected result:** the intended local private file is selected. Continue directly to [Shared completion — Step 1](#step-1--verify-the-host-and-test-your-account).

Source: [SSH configuration](https://man.openbsd.org/ssh_config).

## Route B — Existing local key

### B1 — Confirm the existing key pair

Confirm the private path, matching public key and fingerprint, safe permissions, and available passphrase. Do not generate or overwrite a key. In every example in this route, replace `id_ed25519_github` and its `.pub` path with your actual existing paths; the examples do not rename your files.

macOS:

```sh
command -v ssh
ls -al "$HOME/.ssh"
```

PowerShell:

```powershell
Get-Command ssh, ssh-keygen
Get-ChildItem -Force "$HOME/.ssh"
```

View the public fingerprint after replacing the example path:

```sh
ssh-keygen -lf "$HOME/.ssh/id_ed25519_github.pub"
```

Do not print private-key contents or weaken permissions to silence an error.

**Expected result:** the suitable existing key pair is reused unchanged.

### B2 — Register the public Authentication key

Copy only the public key, using its actual path:

```sh
# macOS: PUBLIC key only
pbcopy < "$HOME/.ssh/id_ed25519_github.pub"
```

```powershell
# PowerShell: PUBLIC key only
Get-Content "$HOME/.ssh/id_ed25519_github.pub" | Set-Clipboard
```

Open [GitHub SSH key settings](https://github.com/settings/keys), choose **New SSH key**, give it a device/purpose title, select **Authentication key**, and paste the whole public-key line. Never upload the private file.

**Expected result:** your public key is an Authentication key on the intended GitHub account.

Source: [adding SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

### B3 — Configure direct-file use for SSH and Git

Merge this into `~/.ssh/config` on macOS or `$HOME\.ssh\config` in PowerShell, substituting the actual private-key path. The filename has no `.txt` suffix. Preserve existing configuration and reconcile any existing GitHub/1Password entry instead of appending duplicate settings.

```sshconfig
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_github
  IdentitiesOnly yes
  IdentityAgent none
```

`IdentityFile` selects the **private file**, not `.pub`. `IdentityAgent none` disables agent use for this host; it does not bypass host verification. An encrypted file needs its passphrase, potentially on every connection. The host entry lets SSH and Git select the same identity without repeating `-i`.

**Expected result:** the intended existing private file is selected. Continue directly to [Shared completion — Step 1](#step-1--verify-the-host-and-test-your-account).

Source: [SSH configuration](https://man.openbsd.org/ssh_config).

## Route C — 1Password

### C1 — Select or create the manager-held key

Open/unlock the desktop app and choose an existing supported Ed25519 or RSA **SSH Key** item. To create a new manager-held key: **New Item → SSH Key → Add Private Key → Generate a New Key → Ed25519 → Generate → Save**. Keep the private key in 1Password.

**1Password generation (checked 11 October 2026):** 1Password can generate Ed25519 or RSA **2048-, 3072-, or 4096-bit** SSH keys. For new manager-held keys, choose Ed25519 or RSA 3072/4096 to follow this guide's strength recommendation. [Official key-generation options](https://www.1password.dev/cli/ssh-keys#generate-an-ssh-key).

Generation options and existing-key import support are separate. The [key reference](#appendix--ssh-key-types-and-sizes) preserves the documented import scope and its testing limitation.

**Expected result:** a selected manager-held identity without exporting a private key.

Source: [1Password key management](https://www.1password.dev/ssh/manage-keys).

### C2 — Register the public Authentication key

Copy only the item's **public key** field. Open [GitHub SSH key settings](https://github.com/settings/keys), choose **New SSH key**, give it a device/purpose title, select **Authentication key**, and paste the whole public-key line. Retain the private key in 1Password.

**Expected result:** the item's public key is an Authentication key on the intended GitHub account.

Source: [adding SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

### C3 — Configure 1Password's SSH client integration

Enable 1Password's SSH agent and configure your SSH client using the [official supported setup](https://www.1password.dev/ssh/agent). Replace conflicting direct-file/`IdentityAgent none` settings with the intended manager configuration; do not start a competing native agent. Confirm Git uses the same SSH client/integration.

During the account test below, approve only the intended client request in 1Password, optionally using Touch ID (Apple's fingerprint authentication) or Windows Hello.

**Expected result:** SSH and Git request the intended manager-held key through 1Password. Continue directly to [Shared completion — Step 1](#step-1--verify-the-host-and-test-your-account).

## Shared completion — All three routes

Your chosen source is now registered and configured. Complete these steps without changing key source.

### Step 1 — Verify the host and test your account

Complete any required organization authorization for the registered key using **Configure SSO** (single sign-on, organization-managed login). See the [organization-access reference](#appendix--client-compatibility-and-organization-access) for identity-provider and access restrictions.

Before accepting a first-use host prompt, compare its fingerprint with [GitHub's official fingerprints](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints). On an unexpected host-key change, stop and investigate. Do not disable host checking or delete `known_hosts` to hide the warning.

```sh
ssh -T git@github.com
```

The username for GitHub.com is `git`; your key determines the GitHub account. **Expected result:** GitHub identifies your expected username and reports successful authentication with no shell access. **Exit code 1 is normal for this successful GitHub test.** It proves account authentication, not access to a particular repository.

Source: [GitHub test result](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection).

### Step 2 — Confirm the repository URL and test read access

Run inside the intended local repository. To create a new copy first, use the [clone reference](#appendix--client-compatibility-and-organization-access).

```sh
git remote -v
git remote get-url origin
git remote get-url --push origin
```

Hypertext Transfer Protocol Secure (HTTPS, encrypted web transport) looks like `https://github.com/OWNER/REPO.git`; SSH looks like `git@github.com:OWNER/REPO.git`. Adding a key does not switch an HTTPS remote automatically. `origin` and `upstream` are labels, not guaranteed destinations.

Only if you deliberately want to switch this remote:

```sh
git remote set-url origin git@github.com:OWNER/REPO.git
```

Recheck fetch and push URLs: a separately configured `pushurl` may still differ. Then test:

```sh
git ls-remote origin
git fetch origin
```

**Expected result:** `ls-remote` reads the accessible refs, and fetch completes. An empty repository may have no refs. Fetch updates local remote-tracking information; it does not merge into your work branch or change the remote.

Sources: [remote management](https://docs.github.com/en/get-started/git-basics/managing-remote-repositories), [fetch](https://git-scm.com/docs/git-fetch).

### Step 3 — Push only when you intend to publish

You can stop after read-access testing. To publish, review the changes, exact destination, branch rules, and authorization first:

```sh
git push -u origin YOUR_BRANCH
```

**Expected result:** only the intended branch update is accepted, subject to repository permissions and rules. A push can trigger continuous integration (CI, automated checks), notifications, or deployments. Reading a public repository does not imply write access; successful SSH authentication does not bypass SSO, required signatures, reviews, or branch protection. Do not test publishing by pushing to a shared main branch.

Sources: [push](https://git-scm.com/docs/git-push), [protected branches](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches).

## Security checklist

- Never commit, paste into chat, or upload a private key to GitHub.
- Keep passphrases out of scripts and command-line arguments.
- Verify host fingerprints; do not disable host checking.
- Redact unnecessary usernames, paths, hosts, and sensitive details before sharing diagnostic logs.
- Give keys clear device/purpose names. Revoke and replace affected keys if a device is lost or a key may be compromised.
- Treat authentication, commit signing, repository authorization, and permission to publish as separate checks.

## Appendix — SSH key types and sizes

**Checked 10 October 2026.**

| Key type | Guidance for authentication |
| --- | --- |
| Ed25519 | Preferred for new keys with compatible tools. |
| RSA | A compatibility alternative; use 4096 bits for a new key. |
| ECDSA | Available for local-file use with compatible tools; unsupported by 1Password. |
| ~~DSA~~ (`ssh-dss`) | DSA SSH keys are unsupported by GitHub; do not generate them for SSH use. |

Sources: [GitHub SSH key guidance](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), [supported RSA/ECDSA keys](https://github.blog/changelog/2026-09-22-security-improvements-for-ssh/).

**1Password import (official documented support; not tested for this guide):** The [official key-import guidance](https://www.1password.dev/ssh/manage-keys#key-import-errors) lists Ed25519 or RSA **2048-, 3072-, or 4096-bit** keys as supported; other RSA lengths, DSA, and ECDSA are unsupported. This import scope comes from the import documentation, not from the generation options.

SHA-2 (Secure Hash Algorithm 2) is a family of hash functions; SHA-1 (Secure Hash Algorithm 1) is an older hash function.

### Choosing a key size

**For new keys, this guide recommends at least 128 bits of classical security.** Follow a stricter organization policy where applicable. This is the guide's recommendation, not a universal GitHub requirement or a claim that existing RSA 2048 keys are immediately unsafe. Existing-key and 1Password routes still reuse suitable keys without a generation step.

Key size measures an algorithm's parameters; security strength estimates resistance to attacks. Compare strength across algorithms, not raw bit counts.

| SSH key type | Size or curve choice | Approximate classical security |
| --- | --- | --- |
| RSA | At least 3072 bits for a new key; the RSA example below uses 4096. | 3072 bits provides about 128 bits of security; 4096 adds margin. |
| ECDSA | P-256, P-384, or P-521; with `-t ecdsa`, select `-b 256`, `-b 384`, or `-b 521`, respectively. | About 128, 192, or 256 bits, respectively. |
| Ed25519 | Fixed parameters; there is no larger Ed25519 key-size option. | About 128 bits. |

Strength estimates: [NIST SP 800-57 Part 1 Rev. 5, §5.6 and Table 2](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-57pt1r5.pdf), [FIPS 186-5, §7.1 for Ed25519](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-5.pdf).

RSA 4096 offers additional classical margin at the cost of larger keys and slower key operations. Choose ECDSA P-256 when its baseline strength meets your needs; choose P-384 or P-521 for a higher required strength and compatible tools. OpenSSH accepts only the three listed ECDSA sizes and ignores `-b` for Ed25519. Keep the dedicated filenames and subsequent path substitutions in your selected route. [OpenSSH size options](https://man.openbsd.org/ssh-keygen.1#b).

Increasing RSA or elliptic-curve key size does not make signatures post-quantum; see the [PQC appendix](#appendix--post-quantum-cryptography-pqc).

For the RSA alternative in Route A:

```sh
ssh-keygen -t rsa -b 4096 -C "YOUR_EMAIL_OR_LABEL" -f "$HOME/.ssh/id_rsa_github"
```

Use this instead of the Ed25519 generation command. Replace `id_ed25519_github` with `id_rsa_github` throughout Route A, including `.pub` paths.

## Appendix — Client compatibility and organization access

### Local paths and client selection

On macOS, key files are normally under `/Users/YOU/.ssh`; in PowerShell `$HOME/.ssh` normally maps under `C:/Users/YOU`.

Instead of a host entry, you can pass equivalent SSH options through `git -c core.sshCommand=...`; use one consistent selection method. To test a local private file explicitly in an interactive terminal:

```sh
ssh -o IdentityAgent=none -o IdentitiesOnly=yes -i "$HOME/.ssh/id_ed25519_github" -T git@github.com
```

The `-i` path is the private file, not `.pub`. Use the actual path for an existing key or RSA key. Keep the host-fingerprint checks from shared Step 1.

If Git for Windows selects a different SSH binary, inspect its configuration and use a verified executable where necessary, for example:

```powershell
git config --local core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"
```

Run `--local` inside the intended repository. It affects transport, not signing. Windows Subsystem for Linux (WSL, a Linux environment on Windows) and graphical user interfaces (GUIs, graphical applications) can have different clients or prompt support. Fix the client/prompt or use an optional supported agent rather than removing the key passphrase.

Sources: [SSH identity options](https://man.openbsd.org/ssh), [SSH configuration](https://man.openbsd.org/ssh_config), [Windows SSH client conflicts](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

### Organization authorization

For an organization using SSO, authorize the key with **Configure SSO** if required. You may first need an identity-provider login, and Internet Protocol (IP) allow-list restrictions may also apply.

Source: [SSO authorization](https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-single-sign-on/authorizing-an-ssh-key-for-use-with-single-sign-on).

### Clone a new local copy

```sh
git clone git@github.com:OWNER/REPO.git
```

Enter the cloned folder and continue at shared Step 2. Confirm the fetch/push destination before relying on `origin`.

Source: [clone](https://git-scm.com/docs/git-clone).

## Appendix — Optional convenience tools

### Optional A — macOS ssh-agent and Keychain

Only choose this if you want agent-backed key use. Remove `IdentityAgent none` from the relevant host entry, or deliberately select your desired agent. If no agent is reachable:

```sh
eval "$(ssh-agent -s)"
```

Load the key without storing its passphrase in Keychain:

```sh
/usr/bin/ssh-add "$HOME/.ssh/id_ed25519_github"
ssh-add -l
```

If you also want Keychain to save the passphrase, use this alternative instead:

```sh
/usr/bin/ssh-add --apple-use-keychain "$HOME/.ssh/id_ed25519_github"
```

For that choice, add `AddKeysToAgent yes` and `UseKeychain yes` to the host entry. Use Apple's tools; Monterey 12+ uses `--apple-use-keychain`, while older macOS used `-K`. `UseKeychain` is Apple-specific; another client may require `IgnoreUnknown UseKeychain` before it or use the intended Apple client.

**Expected result:** your chosen agent can use the key with fewer repeated unlock prompts. Keychain storage is a separate optional decision.

Source: [GitHub macOS agent instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

### Optional B — Windows native ssh-agent

Choose this only if you want the native agent. Do not alter company-managed services without understanding their policy. Remove the deliberate `IdentityAgent none` host setting before agent use.

Administrator PowerShell:

```powershell
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent
```

Normal PowerShell:

```powershell
ssh-add "$HOME/.ssh/id_ed25519_github"
ssh-add -l
```

**Expected result:** the intended key is loaded in the agent used by your SSH client. Manual startup may require starting the service after reboot. Git for Windows, WSL, and GUIs may use different clients/agents; verify them individually. `UseKeychain` is not a Windows option. An SSH server is unnecessary for GitHub client access.

Sources: [Microsoft key management](https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_keymanagement), [GitHub agent conflicts](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

### Optional C — Global defaults and GitHub CLI

This guide uses repository-local Git settings. Choose `--global` only when you intentionally want a user-wide default, accounting for local/conditional overrides. GitHub CLI is not required for browser-based public-key registration. Selecting Route C is an alternative key-source workflow, not an additional convenience layer everyone must configure.

## Appendix — Troubleshooting

- **Permission denied (publickey):** Check that the SSH username is `git`, the public key is an Authentication key on the correct account, and the selected private file is readable with correct permissions. For the optional agent route, also inspect `ssh-add -l`. Use `ssh -vT git@github.com` to inspect key selection.
- **SSH test works but repository not found / push denied:** Check `OWNER/REPO`, account permissions, organization SSO, and separate fetch/push URLs. Account authentication is not repository authorization.
- **PowerShell works but Git or a GUI fails:** Compare `Get-Command ssh` with `git config --show-origin --get core.sshCommand`. Windows OpenSSH, Git Bash, WSL, and GUI clients can use different agents.
- **Wrong account or too many authentication failures:** Select the intended `IdentityFile`; native-key configurations can use `IdentitiesOnly yes`. Multiple accounts typically need host aliases and corresponding remote URLs. Changing `user.email` does not switch the SSH account.
- **Repeated passphrase prompts:** Repeated prompts are expected with direct encrypted-file use. If you chose an agent, check that the client uses it and that Keychain or 1Password is available. Do not weaken the key's passphrase protection as a shortcut.

Sources: [GitHub SSH troubleshooting](https://docs.github.com/en/authentication/troubleshooting-ssh/error-permission-denied-publickey), [SSH client configuration](https://man.openbsd.org/ssh_config).

## Appendix — GitHub SSH key policy and migration dates

**Checked 10 October 2026.** These policy dates add no setup steps.

DSA SSH keys have been unsupported by GitHub since 15 March 2022. [GitHub SSH key support](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

**Announced, not yet effective:** New RSA SSH key uploads require at least 3072 bits from **14 October 2026**. RSA/SHA-1 authentication brownouts: **4 November** and **9 December 2026**; permanent removal: **13 January 2027**. [Schedule](https://github.blog/changelog/2026-09-22-security-improvements-for-ssh/).

## Appendix — Post-quantum cryptography (PQC)

**Checked 10 October 2026.** This is a policy recommendation, not an extra required workflow step.

Distinguish SSH transport **key exchange** from SSH **host/user authentication signatures**. Hybrid PQ key exchange protects transport; it does not make RSA, ECDSA, or Ed25519 signatures post-quantum. Ed25519 is the current compatibility recommendation, not a quantum-resistance claim.

A key-encapsulation mechanism (KEM) establishes a shared secret. Module-Lattice-Based Key-Encapsulation Mechanism (ML-KEM) is a post-quantum KEM; Module-Lattice-Based Digital Signature Algorithm (ML-DSA) creates post-quantum signatures, a different task.

GitHub announced `sntrup761x25519-sha512` hybrid KEX for github.com and non-US data-residency regions, effective 17 September 2025 ([rollout](https://github.blog/engineering/platform-security/post-quantum-security-for-ssh-access-on-github/)). GitHub schedules `mlkem768x25519-sha256` for **14 October 2026** on these endpoints; rollout remains future at this check ([schedule](https://github.blog/changelog/2026-09-22-security-improvements-for-ssh/)). No endpoint negotiation was tested while preparing this guide.

[OpenSSH 10.6](https://www.openssh.org/txt/release-10.6), released 6 October 2026, enables hybrid `ssh-mldsa44-ed25519` signatures. The sources checked here do not establish GitHub acceptance of that key type for SSH authentication; client capability alone is insufficient evidence.

**Recommended policy:** use maintained SSH/Git clients, prefer compatible hybrid PQ KEX defaults, and confirm the actual endpoint's negotiated algorithm. Keep host-key verification and signature checks; do not globally suppress PQ warnings. Manage transport and authentication migrations separately. Before adopting PQ authentication signatures, require explicit support from GitHub, clients, and agents/hardware, then test host/user authentication, recovery, and revocation.

## Appendix — SSH login terminology

This reference explains terms used in this SSH login guide. It adds no required steps or tools.

| Term | Plain-English meaning |
| --- | --- |
| Key pair | Two mathematically linked parts: a public key and a private key. |
| Public key | The shareable half used to check signatures. Register it with GitHub for the intended key role. |
| Private key | The protected half used to sign or prove key possession. Keep it private; never upload it to GitHub. |
| Passphrase | A secret that unlocks a protected private key. It is separate from a GitHub account password. |
| Fingerprint | A short digest identifying a public key. Compare it through a trusted source before trusting the key. |
| Authentication | Proving which account a connection belongs to. GitHub SSH authentication does not provide website login or a remote shell. |
| Authorization | Permission to access a repository or perform an action. Authentication alone does not grant this permission. |
| Signing / signature | Using a private key to attach a cryptographic check to specific data. SSH uses signatures to prove possession of host and user keys. |
| Verification | Checking a signature with its public key and applicable identity/trust rules. Host-key verification checks the server identity; it does not grant repository access. |
| Authentication key | The GitHub registration role for an SSH key used to access repositories. |
| SSH / OpenSSH | Secure Shell is the connection protocol. OpenSSH supplies the SSH client and key tools used here. |
| HTTPS | Hypertext Transfer Protocol Secure: another encrypted Git transport. |
| Agent / ssh-agent | A background service that performs key operations for clients. Native ssh-agent is optional for these direct local-file routes. |
| Keychain | macOS credential storage that can remember a key's passphrase. This is optional and separate from using an SSH agent. |
| 1Password | An external key manager with SSH-agent integration. Its supported integration is required only when choosing that key-source route. |
| Key size / security strength | Parameter length versus estimated resistance to attacks. Compare security strength across algorithms, not raw key lengths. |
| RSA | Rivest–Shamir–Adleman: a public-key algorithm usable for authentication and signing. Its key format does not determine its signature hash. |
| ~~DSA~~ | Digital Signature Algorithm: a legacy signature scheme. GitHub stopped supporting DSA SSH keys on 15 March 2022. |
| ECDSA | Elliptic Curve Digital Signature Algorithm: a classical signature scheme whose curve determines its parameters, distinct from Ed25519. |
| Ed25519 | A signature scheme in the Edwards-curve Digital Signature Algorithm family; the example key type in this guide. |
| SHA-1 / SHA-2 | Secure Hash Algorithm 1 is a hash algorithm; Secure Hash Algorithm 2 is a family. RSA/SHA-2 uses SHA-256/512; an `ssh-rsa` public-key prefix alone does not imply SHA-1. |
| QC | Quantum computing: computation using quantum-mechanical effects. The opening notice concerns sufficiently capable future quantum computers. |
| PQ / PQC | Post-quantum / post-quantum cryptography: methods designed to resist quantum-computer attacks, without requiring a quantum computer to use them. |
| Hybrid | A combination of classical and post-quantum methods. Hybrid key exchange and hybrid signatures serve different purposes. |
| KEX | Key exchange: the SSH process that establishes session secrets to protect a connection. It is separate from authentication signatures. |
| KEM | Key-encapsulation mechanism: public-key algorithms that let two parties establish a shared secret. It is not a digital signature. |
| ML-KEM | Module-Lattice-Based Key-Encapsulation Mechanism: a post-quantum KEM used in the named hybrid SSH key exchange. |
| ML-DSA | Module-Lattice-Based Digital Signature Algorithm: a post-quantum signature scheme. OpenSSH client support does not establish GitHub acceptance. |
| SSO / IP | Single sign-on connects organization login to an identity provider. Internet Protocol addresses may also be subject to access restrictions. |
| CLI / GUI | Command-line interface / graphical user interface: different ways to run tools; they may select different clients. |
| WSL | Windows Subsystem for Linux: a Linux environment on Windows that can have its own clients and agents. |
| CI | Continuous integration: automated checks that repository events may trigger. |
| URL | Uniform Resource Locator: an address. |

Standards terminology: [NIST ML-KEM](https://csrc.nist.gov/pubs/fips/203/final), [NIST ML-DSA](https://csrc.nist.gov/pubs/fips/204/final).

DSA SSH support: [GitHub SSH-key retirement](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
