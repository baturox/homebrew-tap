cask "mac-cleaner" do
  version "0.2.0"
  sha256 "74ca1ef671198062eb3bd8831d56823c91e22d1bc2d7aaa13afc0e438c1e43d3"

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
