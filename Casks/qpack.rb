cask "qpack" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.1.7"
    sha256 "cd8fbfa2c73cbbdfefba9f8f8a3ad16c5c031059e0b6b7ead810f64bd8aa3cf8"
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
