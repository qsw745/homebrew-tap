cask "qpack" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.1.8"
    sha256 "a4416be443239bc02ed690b8ab591ff74a82ec7a6aa6b8d72129331f9be7ddd2"
  end
  on_intel do
    version "0.1.8"
    sha256 "ba0d8a10c13e6b3f633444ca3e517fcd09090a5678e7c55a8d962e27b4ff479c"
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
