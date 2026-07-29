cask "cloudshellconsole" do
  version "1.7"
  sha256 "b31d7814743528d7e07d2c0bb68ffcf0d877b2555df6697cade77009881f4906"

  url "https://qisw.top/downloads/CloudShellConsole-#{version}.dmg"
  name "CloudShellConsole"
  desc "SSH, SFTP, Telnet, VNC, RDP and SMB client with a GPU-rendered terminal"
  homepage "https://qisw.top/cloudshellconsole/"

  # The update feed the app itself checks — keeps `brew outdated` honest without
  # scraping the download page.
  livecheck do
    url "https://qisw.top/api/updates/latest?platform=macos"
    strategy :json do |json|
      json["version"]
    end
  end

  # Matches LSMinimumSystemVersion (14.0) in the shipped bundle.
  depends_on macos: ">= :sonoma"

  app "CloudShellConsole.app"

  # Everything the app writes outside its bundle. Sessions and credentials are
  # deliberately listed so `brew uninstall --zap` really leaves nothing behind —
  # but note this DELETES saved hosts, so plain `uninstall` (which skips zap)
  # stays the non-destructive default.
  zap trash: [
    "~/Library/Application Support/CloudShellConsole",
    "~/Library/Preferences/com.qsw.CloudShellConsole.plist",
    "~/Library/Saved Application State/com.qsw.CloudShellConsole.savedState",
    "~/Library/Caches/com.qsw.CloudShellConsole",
  ]
end
