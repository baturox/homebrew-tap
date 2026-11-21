cask "mac-cleaner" do
  version "0.3.0"
  sha256 "e53733d3ba24d00956053ea071892b194f778a1354b2d8303b391832f84c56cd"

  url "https://github.com/baturox/mac-cleaner/releases/download/v#{version}/MacCleaner-#{version}.dmg"
  name "Mac Cleaner"
  desc "Disk cleaner for developers who ship with AI agents"
  homepage "https://github.com/baturox/mac-cleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mac Cleaner.app"
  binary "#{appdir}/Mac Cleaner.app/Contents/Resources/bin/mac-cleaner"
end
