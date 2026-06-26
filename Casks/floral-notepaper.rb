cask "floral-notepaper" do
  version "1.1.0"

  name "Floral Notepaper"
  desc "轻量优雅的跨平台桌面便签工具，支持 Markdown 编辑与预览"
  homepage "https://github.com/Achilng/floral-notepaper"

  depends_on macos: ">= :catalina"

  on_arm do
    sha256 "5f73f0748e943f72e12e09389219cae987ccc806ce19d9e0c5dd36f926bf906f"
    url "https://github.com/Achilng/floral-notepaper/releases/download/v#{version}/floral-notepaper_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6402588f58bdbb662afae1bb972c3ba2bc7ce11f2c5a5e1ece16dc1f1e2c4bef"
    url "https://github.com/Achilng/floral-notepaper/releases/download/v#{version}/floral-notepaper_#{version}_x64.dmg"
  end

  app "花笺.app"

  zap trash: [
    "~/Library/Application Support/floral-notepaper",
    "~/Library/Caches/floral-notepaper",
    "~/Library/Preferences/floral-notepaper.plist",
    "~/Library/Saved Application State/floral-notepaper.savedState",
  ]
end
