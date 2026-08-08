cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "901470bddd3ac7ce511c81e197600083f0f2cb2d84b36e8643a9513c5413cd0e",
         intel: "f0213471381a9735e28d17bc49ad431b6d0d4b7de73326965492c7bf61035c0a"

  url "https://github.com/DuskEngServices/dusk/releases/download/v#{version}/Dusk-#{version}-#{arch}.dmg"
  name "Dusk"
  desc "Fast, focused IDE from Dusk Engineering"
  homepage "https://dusk.intelligent-curie.87-106-40-45.plesk.page/"

  app "Dusk.app"

  caveats <<~EOS
    Dusk alpha builds are unsigned. If macOS blocks the first launch:
    right-click Dusk.app in Applications and choose Open.
  EOS
end
