cask "opentape" do
  version "0.1.1"
  sha256 "47300b26e941a8503283e11c16eb310a5c46395eeaacc84ef94c2d2f563e732e"

  url "https://github.com/aidankmcalister/OpenTape/releases/download/v#{version}/OpenTape.dmg"
  name "OpenTape"
  desc "Screen recorder that makes clips ready to share"
  homepage "https://opentape.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "OpenTape.app"

  zap trash: [
    "~/Library/Application Support/com.aidankmcalister.opentape",
    "~/Library/Caches/com.aidankmcalister.opentape",
    "~/Library/Logs/com.aidankmcalister.opentape",
    "~/Library/WebKit/com.aidankmcalister.opentape",
  ]
end
