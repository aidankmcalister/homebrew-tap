cask "opentape" do
  version "0.1.5"
  sha256 "a5969ca40a11724cfbe726cdd197e9c2c3425e1040dc4864ba8e10209675bdbe"

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
