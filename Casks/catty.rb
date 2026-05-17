cask "catty" do
  version "0.1.1"
  sha256 "a4d40cea91ba538e00251d17cc7b72b7dab17f17ac09d0bbab4ee5739bd5ea30"

  # DMG hosted on the site repo (release-host pattern, mirrors LAIC).
  url "https://github.com/mochiexists/catty3d-site/releases/download/v#{version}/Catty-#{version}.dmg",
      verified: "github.com/mochiexists/catty3d-site/"
  name "Catty 3D"
  desc "Terminal that lives in 3D space (local shell + SSH)"
  homepage "https://catty3d.com/"

  livecheck do
    url "https://github.com/mochiexists/catty3d-site/releases/latest"
    strategy :github_latest
  end

  auto_updates true # Sparkle handles in-app updates
  depends_on macos: ">= :sonoma"

  app "Catty.app"

  zap trash: [
    "~/Library/Application Scripts/com.mochiexists.Catty",
    "~/Library/Containers/com.mochiexists.Catty",
    "~/Library/Preferences/com.mochiexists.Catty.plist",
    "~/Library/Caches/com.mochiexists.Catty",
    "~/Library/Application Support/Catty",
  ]
end
