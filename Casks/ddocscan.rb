# Homebrew cask for DDocScan. Lives in a tap repository as Casks/ddocscan.rb;
# packaging/homebrew/update-cask.sh fills in the version and checksums from a GitHub release.
cask "ddocscan" do
  version "0.10.7"

  on_arm do
    sha256 "ea1c7524aa9bca1cea535a9e14a223035bd9a311b40eda9ff5e6190061383e69"
    url "https://github.com/tahayk/DDocScan/releases/download/v#{version}/ddocscan-macos-arm64.zip"
  end
  on_intel do
    sha256 "1ea3d8821b0df0c792eedd21facb6973ed95833e2352ce734118fe0d5b81366d"
    url "https://github.com/tahayk/DDocScan/releases/download/v#{version}/ddocscan-macos-x86_64.zip"
  end

  name "DDocScan"
  desc "Desktop Document Scanner: turn photos of documents into clean, perspective-corrected PDFs"
  homepage "https://github.com/tahayk/DDocScan"

  app "DDocScan.app"

  zap trash: "~/Library/Application Support/ddocscan"
end
