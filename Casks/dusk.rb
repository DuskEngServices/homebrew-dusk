cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "46a3b2667f3b7b299aa5c98e27ecc80a4ae58fcb7553d25c5580d2f44a9b6a1d",
         intel: "a143d8532218617630cb186d9dd2431b574b8891ca3d66999e04fe21b816fe3e"

  url "https://github.com/DuskEngServices/dusk/releases/download/v#{version}/Dusk-#{version}-#{arch}.dmg"
  name "Dusk"
  desc "Fast, focused IDE from Dusk Engineering"
  homepage "https://dusk.duskengineering.services/"

  app "Dusk.app"

  # ad-hoc signed alpha — Homebrew clears quarantine on install

  caveats <<~EOS
    Dusk alpha builds are unsigned. If macOS blocks the first launch:
    right-click Dusk.app in Applications and choose Open.
  EOS
end
