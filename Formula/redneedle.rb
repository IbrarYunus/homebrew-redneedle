class Redneedle < Formula
  desc "macOS system monitor that remembers what happened"
  homepage "https://github.com/IbrarYunus/redneedle-releases"
  url "https://github.com/IbrarYunus/redneedle-releases/releases/download/v0.1.0/needle-0.1.0-macos-arm64.tar.gz"
  sha256 "0845b6fb629cf46da2014fd1f518aa145296d3eecee733306b4cb9ac636fb9f6"
  version "0.1.0"
  license :cannot_represent # closed source, all rights reserved

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "needle"
  end

  test do
    assert_match "needle", shell_output("#{bin}/needle --version")
    # `ports` runs the whole lsof sweep and exits — an end-to-end check that
    # needs no tty.
    system bin/"needle", "ports"
  end
end
