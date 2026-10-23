cask "babbelstream" do
  version "0.5.2"
  sha256 "728b702d394a21a7af7ebca8d2385422973d2b3ee22ac1c809448f16523a2c82"

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
    and Accessibility access and configure your own approved provider and API key.

    Before upgrading, finish any dictation or recovery work and quit BabbelStream.
    Updates may require permission or Keychain approval again.
    Uninstalling this cask retains your settings, keys, dictionary and recordings.
  EOS
end
