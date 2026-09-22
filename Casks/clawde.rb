cask "clawde" do
  version "2.0.6"
  sha256 "4874ddac09c4819505b37b5efa13664429e49055d6c22170ea8702a536d13921"

  url "https://github.com/burakCokyildirim/clawde/releases/download/v#{version}/Clawde-#{version}.zip"
  name "Clawde"
  desc "Desktop pet and menu bar list for Claude Code sessions"
  homepage "https://github.com/burakCokyildirim/clawde"

  livecheck do
    url "https://burakcokyildirim.github.io/clawde/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Clawde.app"

  uninstall quit: "com.burakcokyildirim.clawde"

  zap trash: [
    "~/Library/Application Scripts/com.burakcokyildirim.clawde.widget",
    "~/Library/Application Scripts/TXQN7T6NNQ.com.burakcokyildirim.clawde",
    "~/Library/Caches/com.burakcokyildirim.clawde",
    "~/Library/Containers/com.burakcokyildirim.clawde.widget",
    "~/Library/Group Containers/TXQN7T6NNQ.com.burakcokyildirim.clawde",
    "~/Library/HTTPStorages/com.burakcokyildirim.clawde",
    "~/Library/Preferences/com.burakcokyildirim.clawde.plist",
  ]
end
