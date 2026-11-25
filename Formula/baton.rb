class Baton < Formula
  desc "Terminal-first workspace for coding agent harnesses"
  homepage "https://github.com/billy-enrizky/baton"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.2/baton-aarch64-apple-darwin.tar.gz"
      sha256 "a0b3e8968df7b1b66376b18357ca797afa66e804fcb3d6eace31bfee0c53f143"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.2/baton-x86_64-apple-darwin.tar.gz"
      sha256 "ec50fcd0a1e31d88c96e0fa5145482ed9cbdc6bccb941ac7eb6f656ace6350af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.2/baton-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80228e04072c81bc40f10c98de0464afafaa939100d4a15d602deb0c7311fd94"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.2/baton-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "989743557881ef706f2fdb1e87532be04707a54d5a72b4b1980e3b42fc9be2ae"
    end
  end

  def install
    bin.install "baton"
  end

  test do
    assert_match "baton #{version}", shell_output("#{bin}/baton --version")
  end
end
