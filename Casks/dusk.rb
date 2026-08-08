cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "ec2f0601a8ded5c74fbf4f3189fa638b089a2043ae2af7a5c782c1ba3931438e",
         intel: "2a1cbacdf6dc6a2250fb33bbaa626b7bda49f86fdea71c381be8d887280f99a2"

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
