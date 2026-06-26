cask "floral-notepaper" do
  version "1.1.0"
  sha256 "5f73f0748e943f72e12e09389219cae987ccc806ce19d9e0c5dd36f926bf906f"

  url "https://github.com/Achilng/floral-notepaper/releases/download/v#{version}/floral-notepaper_#{version}_aarch64.dmg",
      verified: "github.com/Achilng/floral-notepaper/"
  name "Floral Notepaper"
  desc "轻量优雅的跨平台桌面便签工具，支持 Markdown 编辑与预览"
  homepage "https://github.com/Achilng/floral-notepaper"

  # 自动适配 Apple Silicon 和 Intel 架构
  arch arm: "aarch64", intel: "x64"
  url "https://github.com/Achilng/floral-notepaper/releases/download/v#{version}/floral-notepaper_#{version}_#{arch}.dmg",
      verified: "github.com/Achilng/floral-notepaper/"

  # 安装 .app 到 /Applications 目录
  app "Floral Notepaper.app"

  zap trash: [
    "~/Library/Application Support/floral-notepaper",
    "~/Library/Caches/floral-notepaper",
    "~/Library/Preferences/floral-notepaper.plist",
    "~/Library/Saved Application State/floral-notepaper.savedState",
  ]
end
