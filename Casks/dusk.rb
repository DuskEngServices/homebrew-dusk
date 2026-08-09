cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "3616bcbc161b18d70d74d3f399151ee9328bd785286925aa48fe053df72a070a",
         intel: "8ccb2fc723300920ae8c7d5f719bbfd46ec0fa943f29c6d7e0b94e89ae74077e"

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
