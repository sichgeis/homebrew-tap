# the maintainer's Homebrew Tap

Homebrew installation and updates for BabbelStream.
Maintainer: [sichgeis](https://github.com/sichgeis).

## BabbelStream pilot: staged, not generally available

The BabbelStream cask is on `codex/babbelstream-pilot` while the downloaded app
is tested on another Apple Silicon Mac. The default branch intentionally has no
installable cask until the release asset has been published and verified.
Do not run the proposed install command until that gate is complete.

This is an independent tap, not Homebrew's official catalogue. BabbelStream 0.5.1
is ad-hoc signed, not Apple-notarized. It is Apple Silicon only, with macOS 13.0
as the declared deployment target; current native evidence is on macOS 26.7.1.
Other macOS versions are not yet verified. The other-Mac launch/install and
first real Homebrew upgrade remain pending.

## Installation (after activation)

With Homebrew already installed:

```sh
brew install --cask sichgeis/tap/babbelstream
open /Applications/BabbelStream.app
```

If Homebrew requests trust for this third-party cask, review the exact source
before accepting; don't grant broad trust as a workaround. If macOS blocks the
first launch, follow [Apple's per-app approval instructions](https://support.apple.com/en-gb/102445).
On managed Macs, contact IT if approval is unavailable. No security bypass is part
of this tap. In BabbelStream's onboarding, explicitly grant microphone and
Accessibility access and configure your own approved provider/API key. No shared
credential is included. Do not record work content without company authorization.

Already have a manual installation? Quit it and preserve a rollback bundle.
A different existing app in Applications can conflict with Homebrew; move that
bundle aside before installation rather than forcing an overwrite. Identical
bundle adoption is not yet validated. Keep Application Support and Keychain intact.
Never run both app copies simultaneously.

## Update (after activation)

Finish or cancel dictation/processing/recovery, review any session-only last draft,
and quit BabbelStream normally before replacing it:

```sh
brew update
brew outdated --cask sichgeis/tap/babbelstream
brew upgrade --cask sichgeis/tap/babbelstream
open /Applications/BabbelStream.app
```

Check Diagnostics for the new version/commit. macOS permissions or Keychain access
may require reapproval. No automatic update check runs inside BabbelStream.
The maintainer uploads each tested version to GitHub and updates the cask's version
and SHA-256. A first real old-to-new upgrade must be tested separately; a successful
first install is not upgrade evidence.

## Remove or recover

Quit the app before `brew uninstall --cask sichgeis/tap/babbelstream`. This removes
the app bundle, retaining settings, dictionary, Keychain credentials, failed
recordings and optional archive. This tap provides no `zap` deletion recipe.
Disable launch-at-login in the app first if removing it permanently.

For urgent rollback, quit and restore the prior trusted DMG manually, keeping data
intact. This can disagree with Homebrew's installed version record. Follow the
[release operator guide](https://github.com/sichgeis/babbelstream/blob/codex/homebrew-distribution/docs/homebrew-release.md)
for pinning/reconciliation; rollback is not yet validated on the pilot Mac.
Never remove Application Support or keys just to fix an install or permission issue.

Report app version/commit, macOS/Homebrew versions, and steps using harmless sample
text through a channel you authorize. Never attach credentials, recordings, work
text, clipboard contents or archives.

## Maintainer procedure

See the [Homebrew release checklist](https://github.com/sichgeis/babbelstream/blob/codex/homebrew-distribution/docs/homebrew-release.md).
Use version-specific HTTPS release URLs and exact SHA-256; never overwrite released
bytes. Publish and verify assets before advancing the cask. No install hooks,
quarantine removal, permission resets, app launches or process killing are permitted.

## App documentation

- [Start here](https://github.com/sichgeis/babbelstream/blob/codex/homebrew-distribution/README.md): requirements, setup, dictation and privacy.
- [Setup and troubleshooting](https://github.com/sichgeis/babbelstream/blob/codex/homebrew-distribution/docs/getting-started.md): provider configuration, recovery and deliberate data removal.
- [Download/launch quality test](https://github.com/sichgeis/babbelstream/blob/codex/homebrew-distribution/docs/homebrew-pilot-smoke-test.md): the current prepublication gate.
- [Documentation index](https://github.com/sichgeis/babbelstream/blob/codex/homebrew-distribution/docs/README.md): user, developer and maintainer guides.

These links track the staging branch until channel activation and documentation integration.
