cask "mooring" do
  version "1.1.1"
  sha256 "64144b3fc733298287bbe7e30ead49172bea4798439589acb188f783be29b08a"

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
