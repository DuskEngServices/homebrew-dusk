cask "dusk" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "1c90b3cefcfc4ef908bc0367ea2c1a86a840bf0906713e9e6abe75f0419add42",
         intel: "a2cbca81994be64728515d5f88038600d1f3d8185b3a3ec1b49c4a51babab227"

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
