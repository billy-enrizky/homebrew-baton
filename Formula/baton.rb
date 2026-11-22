class Baton < Formula
  desc "Terminal-first workspace for coding agent harnesses"
  homepage "https://github.com/billy-enrizky/baton"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.3.0/baton-aarch64-apple-darwin.tar.gz"
      sha256 "597b58c9f7d54df2e28c5ae97818101f040d4199ab962f05ee2f10730bd0d35f"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.3.0/baton-x86_64-apple-darwin.tar.gz"
      sha256 "a87beb46e04d1371466480e186513862ac49440acce54dc989a574bfec04d4d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.3.0/baton-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3dc33ff328ae5cc6dcf8e16d932857b30db635e4677f593d61010dacb78449b7"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.3.0/baton-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e98e47bb2e7ea2bfd198f0ee74778ab57a816599027b6161543c5a21f9f62862"
    end
  end

  def install
    bin.install "baton"
  end

  test do
    assert_match "baton #{version}", shell_output("#{bin}/baton --version")
  end
end
