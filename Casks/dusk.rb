cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "eaf98f6c7c6a66db45e94cff98253f300bdd39e412bd668955a44cbe26723b34",
         intel: "577c0efc650fcbdc48b6f9ee1bd1841e1108d5c5ac8d461c7a655367425464b9"

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
