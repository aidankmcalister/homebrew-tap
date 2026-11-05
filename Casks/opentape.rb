cask "opentape" do
  version "0.1.3"
  sha256 "50913034a11e98b8d0024bdc3156fe5255de72f94ac60ec12f09c2fa9038be29"

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
