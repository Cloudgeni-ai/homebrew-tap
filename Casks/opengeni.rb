# The Homebrew cask for the Opengeni desktop app. The desktop release workflow
# fills in the version and checksum and publishes it to the Cloudgeni-ai/tap
# tap, so `brew install --cask cloudgeni-ai/tap/opengeni` installs the newest
# release. The app updates itself afterwards.
cask "opengeni" do
  version "0.1.12"
  sha256 "7a9dfeba9b95719567901214f75f3b6e87bd291fb2451509254efbe84f52c525"

  url "https://github.com/Cloudgeni-ai/opengeni/releases/download/desktop-v#{version}/Opengeni-#{version}-mac.dmg"
  name "Opengeni"
  desc "Work with your agents from the desktop"
  homepage "https://github.com/Cloudgeni-ai/opengeni"

  livecheck do
    url "https://github.com/Cloudgeni-ai/opengeni.git"
    regex(/^desktop-v(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Opengeni.app"

  uninstall quit: "ai.opengeni.desktop"

  zap trash: [
    "~/Library/Application Support/Opengeni",
    "~/Library/Caches/ai.opengeni.desktop",
    "~/Library/Caches/ai.opengeni.desktop.ShipIt",
    "~/Library/HTTPStorages/ai.opengeni.desktop",
    "~/Library/Logs/Opengeni",
    "~/Library/Preferences/ai.opengeni.desktop.plist",
    "~/Library/Saved Application State/ai.opengeni.desktop.savedState",
  ]
end
