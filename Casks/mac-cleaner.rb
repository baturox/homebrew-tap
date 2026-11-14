cask "mac-cleaner" do
  version "0.1.3"
  sha256 "2bd51c720428e1752d60d2fb352807bf96acd20a99c0747f8d46820132e69ded"

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
