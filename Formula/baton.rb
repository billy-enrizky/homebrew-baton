class Baton < Formula
  desc "Terminal-first workspace for coding agent harnesses"
  homepage "https://github.com/billy-enrizky/baton"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.1/baton-aarch64-apple-darwin.tar.gz"
      sha256 "82ad334c902ed132557f75f6f820a3651385efef6d6ff8e92e0d0299a0e0ce3d"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.1/baton-x86_64-apple-darwin.tar.gz"
      sha256 "6c9f6269f440e6833f12acc9de20358329c2a8ee08d1ccb4ad71df82d7015a99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.1/baton-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c7c044120c0a0f7dd2abe496a58cb96cc8ee2e68601c513538134fd764f73af"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.1/baton-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34b20966a76521f5f22e4b22fadb0d412661ef525cbaf7694308f222e64f392a"
    end
  end

  def install
    bin.install "baton"
  end

  test do
    assert_match "baton #{version}", shell_output("#{bin}/baton --version")
  end
end
