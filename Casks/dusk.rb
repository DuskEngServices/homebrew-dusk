cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "08322745e0e3521ee6b5a37c0cbc548174e73a71d09bb916dad8255e239a9603",
         intel: "882f02dc85a7547035ea87f13f806f4c99f5c7a75a542c73c7e110b73b497133"

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
