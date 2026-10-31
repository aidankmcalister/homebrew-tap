cask "opentape" do
  version "0.1.0"
  sha256 "17804188522ab749dfa8435649e8ef9ad0b848089067c63e5c62fd312c0fc446"

  url "https://github.com/aidankmcalister/OpenTape/releases/download/v#{version}/OpenTape.dmg"
  name "OpenTape"
  desc "Screen recorder that turns raw recordings into polished demos"
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
