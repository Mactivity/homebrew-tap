cask "mactivity" do
  version "1.0.4"
  sha256 "bd16b7377566d5ea3ba9eb65a69845ae3690e854299f970211cd1f31ae271ce9"

  url "https://mactivity.app/download/Mactivity-#{version}.dmg"
  name "Mactivity"
  desc "System monitor that groups every process under its app, with a year of history"
  homepage "https://mactivity.app/"

  livecheck do
    url "https://mactivity.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Mactivity.app"
  binary "#{appdir}/Mactivity.app/Contents/Helpers/mactivity"

  zap trash: [
    "~/Library/Application Support/Mactivity",
    "~/Library/Caches/app.mactivity.Mactivity",
    "~/Library/Group Containers/M48435UMZ2.app.mactivity",
    "~/Library/HTTPStorages/app.mactivity.Mactivity",
    "~/Library/Preferences/app.mactivity.Mactivity.plist",
    "~/Library/Saved Application State/app.mactivity.Mactivity.savedState",
  ]
end
