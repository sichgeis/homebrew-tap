cask "babbelstream" do
  version "0.6.1"
  sha256 "5150941438e03fabc3cb03f8f95cd6cb0b8e0ce2b8e6915610503ce28a5f5748"

  url "https://github.com/sichgeis/babbelstream/releases/download/v#{version}/BabbelStream-#{version}.dmg"
  name "BabbelStream"
  desc "Menu bar dictation helper for focused text fields"
  homepage "https://github.com/sichgeis/babbelstream"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "BabbelStream.app"

  caveats <<~EOS
    This colleague pilot is ad-hoc signed and is not notarized by Apple.
    macOS may require Privacy & Security > Open Anyway after the first launch attempt.
    Managed Macs may require IT approval. Do not disable macOS security protections.

    Open BabbelStream from Applications and use its setup dialog to grant microphone
    and Accessibility access. Choose local model setup (macOS 14+) or configure
    your own approved remote provider and API key.

    Before upgrading, finish any dictation or recovery work and quit BabbelStream.
    Updates may require permission or Keychain approval again.
    Uninstalling this cask retains your settings, keys, dictionary and recordings.
  EOS
end
