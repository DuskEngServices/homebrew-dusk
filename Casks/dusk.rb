cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "e14ba8dfa003df55f1efc59eb67875b890978599335dbc3855deb02d946a71c5",
         intel: "8c4880a11e3ca0cf0736d42917c47032b0c58f3084d8fcf3b3be5eb39a4d7cd0"

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
