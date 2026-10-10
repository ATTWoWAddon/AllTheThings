# GitHub SSH Authentication Guide

**Step-by-step draft · macOS and Windows 11 · Official documentation checked October 10, 2026**

Follow the numbered workflow for **one selected key source**: new local key, existing local key, or external manager such as 1Password. Local-file paths need no ssh-agent. The manager path requires its own supported agent/client integration. Native agents, Keychain, global defaults, and GitHub CLI are not universal prerequisites.

Here, “login” means SSH authentication for Git clone/fetch/push, not website login or a remote shell. An Authentication key enables transport; a Signing key enables commit/tag verification. Reusing a public key for both requires registering it separately in both roles. See the companion [**GitHub Commit Signing Guide**](github-commit-signing.md) for signatures.

This is an unexecuted draft procedure. No keys or settings were changed and no repository was pushed. Commands are based on official docs, not testing on your computers. Replace uppercase placeholders with your values.

## Flow — Choose one SSH key source

```mermaid
flowchart TD
  Start[Check tools] --> Source{Choose ONE key source}
  Source -->|New local key| New[Generate with ssh-keygen]
  Source -->|Existing local key| Existing[Reuse protected key files]
  Source -->|External manager| Manager[Select or create key in 1Password]
  New --> Public[Register PUBLIC Authentication key on GitHub]
  Existing --> Public
  Manager --> Public
  Public --> Client{Configure selected source}
  Client -->|Local file| Direct[SSH reads PRIVATE file directly]
  Client -->|1Password| Integration[Configure 1Password agent and SSH client]
  Direct --> Test[Verify host fingerprint and test account]
  Integration --> Test
  Test --> Read[Confirm SSH remote and test clone or fetch]
  Read --> Publish{Want to publish}
  Publish -->|No| Stop[Stop after read testing]
  Publish -->|Yes and authorized| Push[Review and push intended branch]
  Direct -. Optional convenience .-> Agent[Native ssh-agent and optional Keychain]
```

**Text version:** choose new local / existing local / 1Password → register the public Authentication key → configure that source → verify host and account → test repository reads → push only if intended and authorized. Native ssh-agent and Keychain are optional for local files. **Choosing 1Password requires its own agent/client integration, not exporting its private key.**

## Required workflow — Follow only your chosen key-source branch

### Step 1 — Check the client and existing key files

```sh
git --version
ssh -V
```

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

**Expected result:** identify the SSH client and any suitable existing key. Reuse a suitable key instead of generating another unnecessarily. Do not print private-key contents. The local-file route needs no agent. If choosing the manager path, check the manager and its supported client integration instead.

Source: [OpenSSH client](https://man.openbsd.org/ssh).

### Step 2 — Choose exactly one key-preparation path

**Path 1 — Generate a new local key with ssh-keygen.**

If a suitable key already exists, skip generation and substitute its path in the later examples. Otherwise create the directory:

```sh
# macOS
mkdir -p "$HOME/.ssh"
```

```powershell
# PowerShell
New-Item -ItemType Directory -Force "$HOME/.ssh" | Out-Null
```

Generate the pair and view its public fingerprint:

```sh
ssh-keygen -t ed25519 -C "YOUR_EMAIL_OR_LABEL" -f "$HOME/.ssh/id_ed25519_github"
ssh-keygen -lf "$HOME/.ssh/id_ed25519_github.pub"
```

Choose a strong passphrase and cancel any overwrite prompt. `id_ed25519_github` is private; `.pub` is public. Protect the private file from other users; do not weaken permissions to silence an error. On macOS, files are normally under `/Users/YOU/.ssh`; in PowerShell `$HOME/.ssh` normally maps under `C:/Users/YOU`.

**Expected result:** a usable protected private file and its public counterpart. `-C` is only a label; it need not be a verified GitHub email. SSH authentication maps the registered public key to your account. Commit email is a separate setting.

Source: [GitHub key generation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

**Path 2 — Use an existing local key.** Skip generation. Confirm the private path, matching public key and fingerprint, safe permissions, and available passphrase. Substitute the existing paths in the examples. Expected: reuse the existing key without overwriting it.

**Path 3 — Use an external key manager such as 1Password.** Open/unlock the desktop app and choose an existing SSH Key item. If you need a new manager-held key: **New Item → SSH Key → Add Private Key → Generate a New Key → Ed25519 → Generate → Save**. Copy only its public field for Step 3; retain the private key in 1Password. Expected: a selected manager-held identity. Continue through Step 4's manager setup/test branch, not its direct-file command.

Source: [1Password key management](https://www.1password.dev/ssh/manage-keys).


### Step 3 — Register the public Authentication key

Go to **GitHub Settings → SSH and GPG keys → New SSH key**. Give it a device/purpose title, select **Authentication key**, and paste the whole public-key line. Manager users copy the public field from 1Password; the following clipboard commands are for local-file paths only.

```sh
# macOS: PUBLIC key only
pbcopy < "$HOME/.ssh/id_ed25519_github.pub"
```

```powershell
# PowerShell: PUBLIC key only
Get-Content "$HOME/.ssh/id_ed25519_github.pub" | Set-Clipboard
```

For an SSO organization, authorize the key with **Configure SSO** if required. You may first need an identity-provider login, and IP allow-list restrictions may also apply.

**Expected result:** the public key is an Authentication key on the intended GitHub account and authorized for the relevant organization where required. Never upload the private file.

Sources: [adding SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account), [SSO authorization](https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-single-sign-on/authorizing-an-ssh-key-for-use-with-single-sign-on).

### Step 4 — Configure the selected source and test safely

**Local-file paths 1 or 2:**

Run in an interactive terminal; this command explicitly avoids an agent:

```sh
ssh -o IdentityAgent=none -o IdentitiesOnly=yes -i "$HOME/.ssh/id_ed25519_github" -T git@github.com
```

The `-i` path is the **private file**, not `.pub`. An encrypted file needs its passphrase; without an agent you may be prompted on each connection. The username for GitHub.com is `git`; your key determines your GitHub account.

**Manager path 3 — 1Password:** enable its SSH agent and configure your SSH client using the app's supported setup. Replace conflicting direct-file/`IdentityAgent none` settings with the intended manager configuration; do not start a competing native agent. Keep the private key in 1Password. Then test:

```sh
ssh -T git@github.com
```

Approve only the intended client request in 1Password, optionally using Touch ID or Windows Hello. Expected: the selected manager-held key is offered. [Official 1Password agent/client setup](https://www.1password.dev/ssh/agent).

**Both branches:** Before accepting a first-use host prompt, compare its fingerprint with [GitHub's official fingerprints](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints). On an unexpected host-key change, stop and investigate. Do not disable host checking or delete `known_hosts` just to hide the warning.

**Expected result:** GitHub identifies your expected username and reports successful authentication with no shell access. **Exit code 1 is normal for this successful GitHub test.** It proves account authentication, not access to a particular repository.

Sources: [SSH identity options](https://man.openbsd.org/ssh), [IdentityAgent and IdentityFile](https://man.openbsd.org/ssh_config), [GitHub test result](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection).

### Step 5 — Make Git use the same identity

**Local-file paths 1 or 2:**

Git also needs to select the intended private key. This guide uses a host entry so Git operations can use the key without repeating `-i`. Configuration is a selection method, not an agent requirement.

Merge this into `~/.ssh/config` on macOS or `$HOME\.ssh\config` in PowerShell. The filename has no `.txt` suffix. Preserve existing configuration; if there is already a GitHub/1Password entry, reconcile it rather than blindly appending duplicate settings.

```sshconfig
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_github
  IdentitiesOnly yes
  IdentityAgent none
```

`IdentityAgent none` explicitly disables agent use for this host. It is not a host-security bypass. If you later choose an agent, remove or replace this setting as part of that intentional switch.

```sh
ssh -T git@github.com
```

**Expected result:** the same account succeeds using the saved key selection. You can instead pass equivalent SSH options through `git -c core.sshCommand=...`; you only need one consistent selection method.

If Git for Windows selects a different SSH binary, inspect its configuration and use a verified executable where necessary, for example:

```powershell
git config --local core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"
```

Run `--local` inside the intended repository. It affects transport, not signing. WSL and GUIs can have different clients or prompt support. Fix the client/prompt or use an optional supported agent rather than removing the key passphrase.

Sources: [SSH configuration](https://man.openbsd.org/ssh_config), [Windows SSH client conflicts](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

**Manager path 3:** keep the client setup completed in Step 4; do not apply the agentless host block above. Confirm Git uses the same SSH client/integration. Expected: Git requests authorization from 1Password with the intended key.

### Step 6 — Confirm the repository URL and test read access

For an existing repository:

```sh
git remote -v
git remote get-url origin
git remote get-url --push origin
```

HTTPS looks like `https://github.com/OWNER/REPO.git`; SSH looks like `git@github.com:OWNER/REPO.git`. Adding a key does not switch an HTTPS remote automatically. `origin` and `upstream` are labels, not guaranteed destinations.

Only if you deliberately want to switch this remote:

```sh
git remote set-url origin git@github.com:OWNER/REPO.git
```

Recheck fetch and push URLs: a separately configured `pushurl` may still differ. For a new local copy instead:

```sh
git clone git@github.com:OWNER/REPO.git
```

Enter the cloned folder, then test:

```sh
git ls-remote origin
git fetch origin
```

**Expected result:** `ls-remote` reads the accessible refs, and fetch completes. An empty repository may have no refs. Fetch updates local remote-tracking information; it does not merge into your work branch or change the remote.

Sources: [remote management](https://docs.github.com/en/get-started/git-basics/managing-remote-repositories), [clone](https://git-scm.com/docs/git-clone), [fetch](https://git-scm.com/docs/git-fetch).

### Step 7 — Push only when you intend to publish

You can stop after read-access testing if you do not want to publish anything. If publishing is intended, review the changes, exact destination, branch rules, and authorization first:

```sh
git push -u origin YOUR_BRANCH
```

**Expected result:** only the intended branch update is accepted, subject to repository permissions and rules. A push can trigger CI, notifications, or deployments. Reading a public repository does not imply write access; successful SSH authentication does not bypass SSO, required signatures, reviews, or branch protection. Do not test publishing by pushing to a shared main branch.

Sources: [push](https://git-scm.com/docs/git-push), [protected branches](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches).

## Optional convenience tools — Not part of the minimum workflow

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

This guide uses repository-local Git settings. Choose `--global` only when you intentionally want a user-wide default, accounting for local/conditional overrides. GitHub CLI is not required for browser-based public-key registration. Selecting 1Password in Step 2 is an alternative key-source workflow, not an additional convenience layer everyone must configure.

## Troubleshooting and security


- **Permission denied (publickey):** Check that the SSH username is `git`, the public key is an Authentication key on the correct account, and the selected private file is readable with correct permissions. For the optional agent route, also inspect `ssh-add -l`. Use `ssh -vT git@github.com` to inspect key selection.
- **SSH test works but repository not found / push denied:** Check `OWNER/REPO`, account permissions, organization SSO, and separate fetch/push URLs. Account authentication is not repository authorization.
- **PowerShell works but Git or a GUI fails:** Compare `Get-Command ssh` with `git config --show-origin --get core.sshCommand`. Windows OpenSSH, Git Bash, WSL, and GUI clients can use different agents.
- **Wrong account or too many authentication failures:** Select the intended `IdentityFile`; native-key configurations can use `IdentitiesOnly yes`. Multiple accounts typically need host aliases and corresponding remote URLs. Changing `user.email` does not switch the SSH account.
- **Repeated passphrase prompts:** Repeated prompts are expected with direct encrypted-file use. If you chose an agent, check that the client uses it and that Keychain or 1Password is available. Do not weaken the key's passphrase protection as a shortcut.

Sources: [GitHub SSH troubleshooting](https://docs.github.com/en/authentication/troubleshooting-ssh/error-permission-denied-publickey), [SSH client configuration](https://man.openbsd.org/ssh_config).

## Security checklist

- Never commit, paste into chat, or upload a private key to GitHub.
- Keep passphrases out of scripts and command-line arguments.
- Verify host fingerprints; do not disable host checking.
- Redact unnecessary usernames, paths, hosts, and sensitive details before sharing diagnostic logs.
- Give keys clear device/purpose names. Revoke and replace affected keys if a device is lost or a key may be compromised.
- Treat authentication, commit signing, repository authorization, and permission to publish as separate checks.
