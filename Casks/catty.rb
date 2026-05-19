cask "catty" do
  version "0.1.2"
  sha256 "b134154b23027e6bb6715be5d7619e348cc1ce98447424bd8e9a7e31a5a1a71c"

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
