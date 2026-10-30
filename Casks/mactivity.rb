cask "mactivity" do
  version "1.7.0"
  sha256 "a6779dd4a236ead756c7c57747f0d428220c3184f4b1d3e182a6ac5724245ed9"

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
