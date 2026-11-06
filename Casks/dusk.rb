cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "96f8d576b36b31233548889decd2f1fe1e91dc648527ccb81b0e7ccdba4ba3ac",
         intel: "af204bb22ab9ee28d01a85b20b9e2fd41a0b634d36b5575a138767d187966e1e"

  url "https://github.com/DuskEngServices/dusk/releases/download/v#{version}/Dusk-#{version}-#{arch}.dmg"
  name "Dusk"
  desc "Fast, focused IDE from Dusk Engineering"
  homepage "https://dusk.duskengineering.services/"

  # signed with Developer ID and notarised; the app updates itself
  auto_updates true

  app "Dusk.app"
end
