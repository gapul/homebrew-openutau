cask "openutau" do
  arch arm: "arm64", intel: "x64"

  version "0.1.565"
  sha256 arm:   "1c3639e195bfb47f80b876605c86f046d3e08859d685beb8984311d50984b76e",
         intel: "860f3760b75c0dacdef07f3504a938d52f02b4cf945d8b09f5bb4f4458487cfb"

  url "https://github.com/stakira/OpenUtau/releases/download/#{version}/OpenUtau-osx-#{arch}.dmg"
  name "OpenUtau"
  desc "Open singing synthesis platform / open source UTAU successor"
  homepage "https://www.openutau.com/"

  depends_on macos: ">= :monterey"

  app "OpenUtau.app"

  postflight do
    system_command "xattr", args: ["-rc", "#{appdir}/OpenUtau.app"]
  end

  zap trash: [
    "~/Library/Application Support/OpenUtau",
    "~/Library/Preferences/com.OpenUtau.OpenUtau.plist",
  ]
end
