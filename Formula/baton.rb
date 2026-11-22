class Baton < Formula
  desc "Terminal-first workspace for coding agent harnesses"
  homepage "https://github.com/billy-enrizky/baton"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.0/baton-aarch64-apple-darwin.tar.gz"
      sha256 "86b1c79e435c127df4bc651319e4b8cc0f73e10f5f1da01eb3e8b677d689a0e5"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.0/baton-x86_64-apple-darwin.tar.gz"
      sha256 "9ab0fb6c12302fe032db742994224b0858cb6d4624435508c7689e6b93901243"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.0/baton-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "921aac5157f1c828e0cbf9953f462f226f71d6098d7482c3a33836bf047eae37"
    end

    on_intel do
      url "https://github.com/billy-enrizky/baton/releases/download/v0.4.0/baton-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9b769772a67986961a68d3eda69b6cd4e788c0747b29d1f8e5f6a604df7275d"
    end
  end

  def install
    bin.install "baton"
  end

  test do
    assert_match "baton #{version}", shell_output("#{bin}/baton --version")
  end
end
