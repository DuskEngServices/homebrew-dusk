cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "0c1cfbf48154ec89f959677b921b640adaef9ba5b7c249156f63ebab77022c18",
         intel: "70ede173f1d2a69732d90973a2e70646f8fd17e7e5933a390c849175e4860a9f"

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
