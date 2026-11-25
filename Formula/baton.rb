class Baton < Formula
  desc "Terminal-first workspace for coding agent harnesses"
  homepage "https://github.com/billy-enrizky/baton"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.3/baton-aarch64-apple-darwin.tar.gz"
      sha256 "27d5ace85d7f889004b20741baf98c0ea8aa56e0b739deee61075eeed5fa95c4"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.3/baton-x86_64-apple-darwin.tar.gz"
      sha256 "e2857e3f49344e3d3be69bd96f4f1cdce5a53f73572daea9f4ee6599aea05cd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.3/baton-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "356e52ebb933e8ed721e16d36552549dbd2126ba45637b5be91b06ec043c8dd2"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.3/baton-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00622e3396bd8ad36114ef23a567021c99806f6cd5337ed48f4b09cda0b9ffa4"
    end
  end

  def install
    bin.install "baton"
  end

  test do
    assert_match "baton #{version}", shell_output("#{bin}/baton --version")
  end
end
