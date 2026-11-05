cask "mooring" do
  version "1.1.0"
  sha256 "7bf727bed79f2181a27b41afb461d9a99c415a2f14d0155691c64cdd59ed6b0e"

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
