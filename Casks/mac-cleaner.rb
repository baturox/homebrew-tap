cask "mac-cleaner" do
  version "0.1.0"
  sha256 "cef7417f5ced49c0aca72a625b900b84fbb942f4d092c720c5aed6a32ac1f752"

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

  caveats <<~EOS
    Mac Cleaner is not notarized by Apple yet, so macOS blocks it on first use
    ("Apple could not verify..."). Choose Done, not Move to Trash, then either
    open System Settings > Privacy & Security and click Open Anyway, or run:
      xattr -dr com.apple.quarantine "#{appdir}/Mac Cleaner.app"
    Until then the mac-cleaner command is stopped by macOS as well.
  EOS
end
