cask "mactivity" do
  version "1.2.0"
  sha256 "ee4f99d80b16400a1419b7d521a2278cbd80fe118480c961228744c5ea007c48"

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
