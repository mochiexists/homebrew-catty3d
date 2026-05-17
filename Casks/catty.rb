cask "catty" do
  version "0.1.1"
  sha256 "3dcd1d42c4ca5ec59776dfda3d5d55990fc1b53a0cccbf86a4775ef3eded98a3"

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

  app "Catty 3D.app"

  zap trash: [
    "~/Library/Application Scripts/com.mochiexists.Catty",
    "~/Library/Containers/com.mochiexists.Catty",
    "~/Library/Preferences/com.mochiexists.Catty.plist",
    "~/Library/Caches/com.mochiexists.Catty",
    "~/Library/Application Support/Catty",
  ]
end
