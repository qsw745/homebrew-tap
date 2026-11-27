cask "qpack" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.1.5"
    sha256 "583ad990a60f0264948d5cd141e86299dd85d19423751839c7c3724d3ff8bd7f"
  end
  on_intel do
    version "0.1.2"
    sha256 "49a9eda63e730e86550275c3e36cfd26a266decbeed2c32f4d4e072ee950ec58"
  end

  url "https://qisw.top/qpack/releases/QPack_#{version}_#{arch}_homebrew.zip"
  name "QPack"
  desc "带中文编码检测与智能解压的压缩工具"
  homepage "https://qisw.top/qpack/"

  depends_on macos: :monterey

  app "QPack.app"

  zap trash: [
    "~/Library/Application Support/com.qpack.app",
    "~/Library/Preferences/com.qpack.app.plist",
    "~/Library/Caches/com.qpack.app",
    "~/Library/Services/使用 QPack 智能解压.workflow",
    "~/Library/Services/使用 QPack 快速压缩.workflow",
  ]
end
