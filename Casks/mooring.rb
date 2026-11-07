cask "mooring" do
  version "1.2.0"
  sha256 "323e206ae5a77a982334947d6fb72d6f454eb4ac5c4e5c12a5befef7ee08c175"

  url "https://dl.mooring.sh/Mooring-#{version}.dmg"
  name "Mooring"
  desc "Productivity tool for Claude Code"
  homepage "https://mooring.sh/"

  livecheck do
    url "https://dl.mooring.sh/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Mooring.app"

  uninstall quit: "sh.mooring.mac"

  zap trash: [
    "~/Library/Application Support/Mooring",
    "~/Library/Caches/sh.mooring.mac",
    "~/Library/HTTPStorages/sh.mooring.mac",
    "~/Library/HTTPStorages/sh.mooring.mac.binarycookies",
    "~/Library/Preferences/sh.mooring.mac.plist",
    "~/Library/Saved Application State/sh.mooring.mac.savedState",
  ]
end
