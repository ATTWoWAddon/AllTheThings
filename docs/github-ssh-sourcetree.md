# GitHub SSH with Sourcetree

Use this guide after choosing and configuring a key in the [GitHub SSH Login Guide](github-ssh-login.md). It connects that setup to Sourcetree on macOS or Windows 11, including local keys and the 1Password SSH agent.

**Draft · Sources checked November 17, 2026.** Account, Git, remote-editing, and clone dialogs were inspected in macOS Sourcetree **4.2.20 (324)**. The [validation record](#validation-record--november-17-2026) distinguishes the external-key Fetch tests from the pre-existing SSH setup. Windows, clone, and push operations were not tested. Replace uppercase placeholders with your values.

## 1. Prepare the SSH identity

Complete one route in the login guide: [new local key](github-ssh-login.md#route-a--new-local-key), [existing local key](github-ssh-login.md#route-b--existing-local-key), or [1Password](github-ssh-login.md#route-c--1password). Register the public key on GitHub as an **Authentication key** and retain the selected private-key or agent configuration.

There are three separate settings:

| Setting | What it controls |
| --- | --- |
| Sourcetree hosting account | Connecting the app to GitHub, including its remote repository browser. An OAuth connection can coexist with SSH transport. |
| Repository remote and SSH client | Which repository Git contacts and which SSH key authenticates clone, fetch, pull, and push. |
| Commit signing | Signatures on commits. Follow the separate [commit signing guide](github-commit-signing.md). |

An account's successful OAuth connection does not verify its SSH identity. Selecting SSH as an account preference also does not establish that every existing repository remote uses SSH; check the actual URLs in Step 4.

Sources: [Sourcetree account connection](https://confluence.atlassian.com/get-started-with-sourcetree/connect-your-bitbucket-or-github-account-847359096.html), [GitHub authentication and signing keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

### Where an external key is selected

In the inspected macOS 4.2.20 account dialogs, **SSH Key** showed **no key found** and a **Generate Key** button. No file-selection or import control was visible in those dialogs. **Generate Key** creates a key; it is not the route for supplying an existing private file or a 1Password identity.

For the external-key workflows below, Sourcetree runs Git, and Git's OpenSSH client obtains the key from its SSH configuration:

| Key source | What you configure | Where the private key stays |
| --- | --- | --- |
| Existing local key | `IdentityFile` points to the private file; `IdentityAgent none` selects direct-file use. | Its existing protected location on disk, outside the repository. |
| 1Password | `IdentityAgent` points to 1Password; `IdentityFile` points to a saved public key to select the matching identity. | In 1Password. The file on disk contains only the public key. |

The account dialog's key indicator is not an end-to-end test of either external route. Verify the selected identity and the actual Fetch result separately.

## 2. Check Sourcetree's Git and SSH client

Open Sourcetree's Git preferences and note which Git installation it uses:

| Platform | Git selection |
| --- | --- |
| macOS | **Sourcetree → Settings… → Git**; inspect the Git version and **Use System Git** / **Reset to Embedded Git** controls. Older documentation calls Settings **Preferences**. |
| Windows | **Tools → Options → Git**; inspect **Use System Git** / **Use Embedded Git**. |

Either Git installation can work. To reproduce an existing terminal setup, select the same verified system Git executable if appropriate. Selecting system Git alone does not guarantee that Git also selects the intended SSH executable or agent.

**Windows:** open **Tools → Options → General** and select **OpenSSH** as the SSH client for the OpenSSH routes below. PuTTY/Plink with Pageant is a separate route; it does not use these OpenSSH settings interchangeably. Atlassian's older Windows SSH tutorial demonstrates that PuTTY route. 1Password's compatibility table lists Sourcetree as supported on both platforms, but lists Windows PuTTY and Pageant as unsupported.

Sources: [Git selection](https://support.atlassian.com/sourcetree/kb/using-embedded-git-or-system-git-in-sourcetree/), [Windows SSH client selector](https://support.atlassian.com/bitbucket-cloud/kb/bitbucket-cloud-ssh-host-key-rotation-faq/), [Atlassian's SSH tutorial](https://support.atlassian.com/bitbucket-cloud/docs/set-up-ssh-with-sourcetree/), [1Password client compatibility](https://www.1password.dev/ssh/agent/compatibility).

When using an external agent on Windows, such as the Windows native service or 1Password, turn off Sourcetree's automatic SSH-agent startup in **Tools → Options → General**. **Windows 3.4.32 (August 28, 2026)** added support for disabling `AutoStartSSHAgent` with OpenSSH; use a version containing that fix if the option is unavailable. This applies to both agent routes below.

Sources: [Sourcetree Windows release notes](https://product-downloads.atlassian.com/software/sourcetree/windows/ga/ReleaseNotes_3.4.33.html), [Windows OpenSSH issue and fix](https://jira.atlassian.com/browse/SRCTREEWIN-14314).

## 3. Apply the matching key route

### macOS — Local key

1. Locate the existing private file and its matching `.pub` file. Complete [Route B](github-ssh-login.md#route-b--existing-local-key) to check the fingerprint and register the **public** key as a GitHub **Authentication key**. Use Route A only if creating a new key.
2. Add this specific host entry to `~/.ssh/config`, replacing the placeholder with the actual private-file path. Place it before broad matching entries such as `Host *`, and reconcile any existing entry for the same alias. The alias lets this key coexist with a different identity for ordinary `github.com` connections.

```sshconfig
Host github-local
  HostName github.com
  User git
  HostKeyAlias github.com
  IdentityFile "/ABSOLUTE/PATH/TO/PRIVATE_KEY"
  IdentitiesOnly yes
  IdentityAgent none
```

3. Set the repository's SSH URL to `git@github-local:OWNER/REPO.git` in Step 4, then run the account and GUI Fetch checks in Step 5. Do not generate another key in Sourcetree's account dialog to complete this route.

Here `IdentityFile` is the **private file**, not `.pub`. `IdentityAgent none` prevents an agent from supplying the key. An encrypted private file needs a working passphrase prompt in the application. Keep its passphrase protection; do not remove it to fix a GUI prompt problem.

If terminal SSH works but Sourcetree cannot prompt, use the guide's optional [macOS agent and Keychain setup](github-ssh-login.md#optional-a--macos-ssh-agent-and-keychain) with Apple's SSH tools. Remove `IdentityAgent none` when deliberately switching to an agent. Saving the passphrase in Keychain is optional. A temporary agent started in a terminal may not be reachable by an already-running GUI application.

Check the effective key selection without connecting:

```sh
/usr/bin/ssh -G git@github-local
```

Inspect `hostname`, `identityfile`, `identityagent`, and `identitiesonly`. `IdentityFile` entries accumulate across matching blocks; `IdentitiesOnly yes` does not exclude additional explicitly configured files. Reconcile unintended matches, then confirm the offered fingerprint in the actual GUI Fetch output.

**Do not assume a repository `core.sshCommand` override controls Sourcetree.** In this macOS validation, an attempted `ssh -v -F` override was not effective: Fetch succeeded with an unregistered test key selected in that separate configuration, and its verbose output was absent. The host-alias route subsequently produced the expected rejection. The exact reason the override was bypassed was not established. Git documents that an inherited `GIT_SSH_COMMAND` can override this setting.

Sources: [GitHub macOS agent setup](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), [Git configuration](https://git-scm.com/docs/git-config.html), [worktree configuration scope](https://git-scm.com/docs/git-worktree#_configuration_file).

### macOS — 1Password

1. Select the intended **SSH Key** item in 1Password and complete [Route C](github-ssh-login.md#route-c--1password), including GitHub **Authentication key** registration. An existing signing-only registration is insufficient for this connection.
2. Copy the item's **public key** field into a plain-text file such as `~/.ssh/github_1password.pub`, preserving the complete public-key line. Do not export or copy the private key.
3. Enable **1Password → Settings → Developer → Use the SSH Agent**. Add this specific entry to `~/.ssh/config` before broad matching entries, and reconcile any existing entry for this alias:

```sshconfig
Host github-1password
  HostName github.com
  User git
  HostKeyAlias github.com
  IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
  IdentityFile ~/.ssh/github_1password.pub
  IdentitiesOnly yes
```

4. Set the repository's SSH URL to `git@github-1password:OWNER/REPO.git` in Step 4. Check `ssh -G git@github-1password` for the selected public file and agent, then run the account and GUI Fetch checks in Step 5. Approve the expected key-use request if 1Password prompts. A prior authorization can mean no new prompt appears.

This host-scoped example adapts 1Password's documented configuration. The `.pub` file selects the identity; 1Password performs the authentication operation with its private key. A public file alone cannot authenticate. No private key is imported into Sourcetree.

Sources: [1Password SSH setup](https://www.1password.dev/ssh/get-started), [selecting a manager-held key by public file](https://www.1password.dev/ssh/agent/advanced).

### Windows — Local key

Select OpenSSH in Sourcetree. Use the `Host github-local` configuration above in `$HOME\.ssh\config`, replacing the private-file placeholder with its Windows path, such as `C:/Users/YOU/.ssh/id_ed25519_github`. Keep the path quoted if it contains spaces. When using the Windows native agent, follow the [optional agent setup](github-ssh-login.md#optional-b--windows-native-ssh-agent) and remove `IdentityAgent none` for that route.

Ensure Git uses the matching Windows SSH executable. After checking the installed path and any existing override, run inside the intended existing repository:

```powershell
git config --show-origin --get core.sshCommand
git config --local core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"
```

Substitute the verified path if Windows is installed elsewhere. This command selects transport, not the commit signer. For a first clone, repository-local settings do not exist yet: either deliberately configure the same command with `--global`, or clone once from a terminal with a command-scoped override, then add that local repository to Sourcetree:

```powershell
git -c core.sshCommand="C:/Windows/System32/OpenSSH/ssh.exe" clone git@github-local:OWNER/REPO.git
```

After cloning, apply the intended local setting inside the new repository and verify the actual Sourcetree Fetch behavior. `-c` applies only to that invocation; `--global` affects other repositories, and `--local` is normally shared by linked worktrees. These Windows steps were not tested in this validation; a successful terminal command does not prove Sourcetree honors the same setting.

Sources: [GitHub's Windows SSH client guidance](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), [Git command overrides](https://git-scm.com/docs/git), [Git configuration](https://git-scm.com/docs/git-config.html).

### Windows — 1Password

1. Select **OpenSSH** in Sourcetree and use Microsoft OpenSSH through the `core.sshCommand` setting above.
2. Follow 1Password's Windows setup: if the **OpenSSH Authentication Agent** service exists, stop it and disable its startup before enabling 1Password's agent. They use the same Windows agent endpoint; choose which agent owns it. This changes agent availability for other applications too.
3. Enable **1Password → Settings → Developer → Use the SSH Agent**. Save the selected item's public key to a `.pub` file and add the host entry below to `$HOME\.ssh\config`, replacing the public-file path. Reconcile conflicting `IdentityAgent none` and identity selections. Do not copy the macOS agent socket path to Windows.
4. Confirm Sourcetree's automatic SSH-agent startup is disabled as described in Step 2.

```sshconfig
Host github-1password
  HostName github.com
  User git
  HostKeyAlias github.com
  IdentityFile "C:/Users/YOU/.ssh/github_1password.pub"
  IdentitiesOnly yes
```

Source: [1Password Windows setup](https://www.1password.dev/ssh/get-started).

## 4. Use the repository's SSH URL

Use the alias belonging to the selected route:

```text
git@github-local:OWNER/REPO.git
git@github-1password:OWNER/REPO.git
```

Choose one URL, not both for the same remote. Each alias resolves to GitHub through its `HostName github.com` setting. The SSH username is `git`; the key determines your GitHub account. `OWNER` identifies the repository owner, which can differ from your username. A plain `git@github.com:OWNER/REPO.git` URL uses the ordinary GitHub host configuration instead of these aliases.

For an **existing repository**, open its **Settings → Remotes**, select the intended remote, and choose **Edit**. On macOS 4.2.20 the field is **URL / path**; replace it with the selected alias URL and save. Preserve the intended owner and repository. Alternatively, run `git remote set-url origin git@github-local:OWNER/REPO.git` for the local-file route, substituting `github-1password` for the manager route. The account preference is not a replacement for this check.

For a **new clone**, open Sourcetree's **Clone** dialog. On macOS, use the repository browser's **New… → Clone from URL**, fill **Source URL**, **Destination Path**, and **Name**, then choose **Clone**. Use the first-clone client configuration described above on Windows. If you first clone in a terminal, add the resulting local folder to Sourcetree.

For the **GitHub account preference** on macOS, open **Sourcetree → Settings… → Accounts**, select the GitHub account, choose **Edit**, and set **Protocol → SSH**. When adding an account, choose **Add… → Host: GitHub**. **Auth Type** and **Connect Account** are separate from **Protocol**; the inspected interface offered OAuth for a new account and showed a personal access token on an existing account. Complete hosting authorization if using those features, and reuse the SSH identity from Step 1.

After editing or cloning, verify both directions inside the intended repository:

```sh
git remote get-url --all origin
git remote get-url --push --all origin
```

A separately configured push URL can differ from the fetch URL. For ATT fork contributions, `origin` commonly points to your fork and `upstream` to `ATTWoWAddon/AllTheThings`; confirm these destinations instead of relying on the remote names.

Sources: [GitHub remote URLs](https://docs.github.com/en/get-started/git-basics/managing-remote-repositories), [Sourcetree account protocol](https://support.atlassian.com/bitbucket-cloud/docs/set-up-ssh-with-sourcetree/), [Sourcetree cloning](https://confluence.atlassian.com/get-started-with-sourcetree/clone-a-remote-repository-847359098.html).

## 5. Verify the account, then Fetch in Sourcetree

First complete the login guide's [host and account check](github-ssh-login.md#step-1--verify-the-host-and-test-your-account), using the SSH executable selected above. Compare any first-use host fingerprint with [GitHub's published fingerprints](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints).

```sh
# macOS with Apple's client; use the alias for your chosen route
/usr/bin/ssh -T git@github-local
# For the 1Password route instead:
/usr/bin/ssh -T git@github-1password
```

```powershell
# Windows with Microsoft OpenSSH; substitute the selected alias
& "$env:WINDIR/System32/OpenSSH/ssh.exe" -T git@github-local
```

Success identifies the expected GitHub username and says shell access is unavailable. **Exit code 1 is expected for this successful test.** It verifies the account, not access to a specific repository.

To verify the identity used by the GUI, temporarily add `LogLevel DEBUG1` inside the selected alias's `Host` entry. In Sourcetree's command output, compare the `Offering public key` and `Server accepts key` fingerprints with the chosen public key. Remove the temporary logging option after verification; omit unnecessary local paths and account details when sharing logs.

Then open that repository in Sourcetree, choose **Fetch**, and select the intended remote where available. With 1Password, approve the expected application request. Confirm Fetch completes without an authentication error. A terminal success alone does not establish that Sourcetree uses the same client and agent.

Fetch updates local remote-tracking information without merging into the current branch. You can finish here. Push only when you intend to publish reviewed work to the selected remote and branch; successful SSH authentication does not grant repository write permission or bypass branch protection.

Sources: [GitHub SSH test](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection), [Git fetch](https://git-scm.com/docs/git-fetch).

## Validation record — November 17, 2026

The initial successful Fetch used a pre-existing SSH configuration. It did **not** validate either external-key setup workflow and is not counted as such here.

Subsequent GUI tests used two separate temporary repositories and unique SSH host aliases pointing to `github.com`, with `origin` targeting `NORPG/AllTheThings`. Each alias selected one explicit identity; the local-file alias disabled agent use, while the manager alias selected the 1Password socket and a public file. The effective settings for ordinary `github.com` connections were compared before adding the aliases and remained unchanged. Existing trusted GitHub host keys were checked, not bypassed.

Environment: macOS Sourcetree **4.2.20 (324)**, System Git **2.56.1**, and the inspected Apple SSH client **OpenSSH 10.5p1**. GUI Fetch selected only `origin`, with pruning and the all-tags option disabled.

| Test | Observed result |
| --- | --- |
| New local key, before GitHub registration | GUI output offered the dedicated test key, then reported `Permission denied (publickey)` and `Completed with errors`. This was a key rejection, not a network or host-key failure. |
| Same local key, after GitHub registration | GUI output offered only the same dedicated fingerprint, GitHub accepted it, and SSH reported public-key authentication and exit status 0. Sourcetree reported `Completed successfully`; no agent identity or alternate key was offered. |
| Existing 1Password key selected through a public file and explicit agent | GUI output offered the selected fingerprint as `explicit agent`, GitHub accepted that fingerprint, and SSH reported public-key authentication and exit status 0. Sourcetree reported `Completed successfully`. |

The temporary local key had no passphrase and was restricted to this validation. Its test cannot establish Sourcetree's encrypted-private-key prompt behavior, Keychain integration, or native-agent setup. The 1Password test reused an existing manager-held identity and running agent; it did not test creating or importing a new 1Password item. No private key was exported from 1Password, and no new authorization prompt was observed. These results do not establish push permission, initial installation behavior, or Windows compatibility.

After testing, the temporary local key was removed from GitHub and its absence was verified through the account's public-key listing. The local test private file was deleted, and the SSH configuration was restored byte-for-byte to its original contents. The existing 1Password key was retained unchanged.

## Troubleshooting

| Symptom | Check |
| --- | --- |
| Fetch asks for HTTPS credentials | Inspect the actual remote URL. SSH key registration does not convert an HTTPS remote. |
| `Permission denied (publickey)` | Check the Authentication key registration, selected key, client path, agent availability, and any required organization SSO authorization in the login guide. |
| Terminal SSH works, Sourcetree fails | Compare Git and SSH selection, `core.sshCommand`, and inherited `GIT_SSH_COMMAND` / `GIT_SSH_VARIANT` overrides. A shell's environment can differ from the GUI's. |
| Windows 1Password is not prompted | Confirm Microsoft OpenSSH, the competing agent service is stopped, and Sourcetree's automatic agent startup is disabled. |
| Background Fetch appears to wait for 1Password | Check 1Password's menu-bar/system-tray icon for **SSH request waiting**. Background requests may have their prompt suppressed; fetch on demand if preferred. |
| Sourcetree's account/key display looks incomplete | Inspect the actual Fetch error and selected SSH configuration. The hosting-account display alone does not verify Git transport. |
| Host-key warning | Compare the host fingerprint with GitHub's official values; investigate unexpected changes instead of disabling host checking. |
| Fetch works, signed commit fails | Diagnose the signer separately. `core.sshCommand` controls transport; `gpg.ssh.program` controls SSH signing. |

Sources: [Git environment overrides](https://git-scm.com/docs/git), [1Password background requests](https://www.1password.dev/ssh/agent/compatibility#using-git-autofetch), [Git configuration](https://git-scm.com/docs/git-config.html).
