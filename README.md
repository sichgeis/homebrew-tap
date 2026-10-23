# sichgeis Homebrew Tap

Homebrew installation and updates for BabbelStream.
Maintainer: [sichgeis](https://github.com/sichgeis).

## BabbelStream pilot

The 0.5.2 release (new app icon; app behavior unchanged from 0.5.1) is published
and its anonymous download checksum verified. The cask is active on this tap's
default branch. On 0.5.1, public Homebrew installation passed on macOS 27.0.1 after moving the manual app aside. A later missing-bundle
reinstall restored the app; launch and dictation then passed without a Keychain
prompt. The disappearance cause is unknown. A further restart of the Homebrew
copy, a genuine future-version upgrade, uninstall retention and rollback remain
separately untested. This remains a limited non-notarized colleague pilot.

This is an independent tap, not Homebrew's official catalogue. BabbelStream 0.5.2
is ad-hoc signed, not Apple-notarized. It is Apple Silicon only, with macOS 13.0
as the declared deployment target; native evidence is on macOS 26.7.1 and pilot
smoke on 27.0.1. Other versions and the first real Homebrew upgrade (0.5.1 to 0.5.2) remain unverified.

## Installation

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

## Update

Finish or cancel dictation/processing/recovery, review any session-only last draft,
and quit BabbelStream normally before replacing it:

```sh
brew update
brew outdated --cask sichgeis/tap/babbelstream
brew upgrade --cask sichgeis/tap/babbelstream
open /Applications/BabbelStream.app
```

Check Diagnostics for the new version/commit. macOS permissions or Keychain access
may require reapproval. If Keychain prompts after every restart despite Always
Allow, follow the [targeted per-item repair](https://github.com/sichgeis/babbelstream/blob/main/README.md#keychain-asks-for-your-password-after-every-restart).
Do not allow all applications or delete the saved key. No automatic update check
runs inside BabbelStream.
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
[release operator guide](https://github.com/sichgeis/babbelstream/blob/main/docs/homebrew-release.md)
for pinning/reconciliation; rollback is not yet validated on the pilot Mac.
Never remove Application Support or keys just to fix an install or permission issue.

Report app version/commit, macOS/Homebrew versions, and steps using harmless sample
text through a channel you authorize. Never attach credentials, recordings, work
text, clipboard contents or archives.

## Maintainer procedure

See the [Homebrew release checklist](https://github.com/sichgeis/babbelstream/blob/main/docs/homebrew-release.md).
Use version-specific HTTPS release URLs and exact SHA-256; never overwrite released
bytes. Publish and verify assets before advancing the cask. No install hooks,
quarantine removal, permission resets, app launches or process killing are permitted.

## App documentation

- [Start here](https://github.com/sichgeis/babbelstream/blob/main/README.md): requirements, setup, dictation and privacy.
- [Setup and troubleshooting](https://github.com/sichgeis/babbelstream/blob/main/docs/getting-started.md): provider configuration, recovery and deliberate data removal.
- [Download/launch quality test](https://github.com/sichgeis/babbelstream/blob/main/docs/homebrew-pilot-smoke-test.md): installation smoke procedure and initial pilot results.
- [Documentation index](https://github.com/sichgeis/babbelstream/blob/main/docs/README.md): user, developer and maintainer guides.

The initial pilot is closed; these links track the integrated app documentation on main.
Untested upgrade, uninstall retention and rollback cases remain in the
[follow-up matrix](https://github.com/sichgeis/babbelstream/blob/main/docs/implementation-plan.md#homebrew-pilot-lifecycle-follow-ups).


