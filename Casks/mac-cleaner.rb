cask "mac-cleaner" do
  version "0.1.4"
  sha256 "137ae05c7a6b12e3af4fe5b25e4250f834c6697b0467fcfb676eb7ac0957ade0"

  url "https://github.com/baturox/mac-cleaner/releases/download/v#{version}/MacCleaner-#{version}.dmg"
  name "Mac Cleaner"
  desc "Disk cleaner for developers who ship with AI agents"
  homepage "https://github.com/baturox/mac-cleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Mac Cleaner.app"
  binary "#{appdir}/Mac Cleaner.app/Contents/Resources/bin/mac-cleaner"
end
