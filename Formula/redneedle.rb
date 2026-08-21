class Redneedle < Formula
  desc "macOS system monitor that remembers what happened"
  homepage "https://github.com/IbrarYunus/redneedle-releases"
  url "https://github.com/IbrarYunus/redneedle-releases/releases/download/v0.1.1/needle-0.1.1-macos-arm64.tar.gz"
  sha256 "3b762eb95bb5a14d91f5fd5a40981ea5189ab9327d7ac3fef4d5c2d72c702248"
  version "0.1.1"
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
