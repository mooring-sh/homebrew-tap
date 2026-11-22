cask "mooring" do
  version "1.4.0"
  sha256 "2897be3d2f48c61a7823e2c46fa80f8baf51a4571fa311da4aac995318579e64"

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
  binary "#{appdir}/Mooring.app/Contents/Resources/bin/moor"

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
