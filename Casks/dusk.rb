cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "51ddac1efdd2b577d3dbb19d52fe4f11a15b6eae7e2e90928ca596961a869c52",
         intel: "bcc740a0a82e67dc354fdd1e6a8c3946c7435c3940fbd8cda529f047da98a734"

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
