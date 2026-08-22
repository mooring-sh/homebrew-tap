cask "mooring" do
  version "0.11.0"
  sha256 "d80d525fcef1ab4b461a7c8063e05d4047a4567b69bc6b23ca52497a1268efeb"

  url "https://dl.mooring.sh/Mooring-#{version}.dmg",
      verified: "dl.mooring.sh/"
  name "Mooring"
  desc "Mac-native productivity tool for Claude Code"
  homepage "https://mooring.sh/"

  livecheck do
    url "https://dl.mooring.sh/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Mooring.app"

  zap trash: [
    "~/Library/Application Support/Mooring",
    "~/Library/Caches/sh.mooring.mac",
    "~/Library/HTTPStorages/sh.mooring.mac",
    "~/Library/Preferences/sh.mooring.mac.plist",
    "~/Library/Saved Application State/sh.mooring.mac.savedState",
  ]
end
