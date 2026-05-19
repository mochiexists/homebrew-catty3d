cask "catty" do
  version "1.0.0"
  sha256 "bcea4cb681081e75ddefec708e8cbed07edc16ba91d5dfc819b6fb9572375e9d"

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
