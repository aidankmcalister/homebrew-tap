cask "opentape" do
  version "0.1.4"
  sha256 "05fc708f66ed2d40dbb4409f8bd4b94537c9d536d3ba4ecfa2b40fa4a86107a3"

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
