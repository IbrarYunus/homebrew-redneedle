class Redneedle < Formula
  desc "macOS system monitor that remembers what happened"
  homepage "https://github.com/IbrarYunus/redneedle"
  url "https://github.com/IbrarYunus/redneedle/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "33d521d640b1814a7ef3fd7ffe78bf9e879a84adc692b666cd48e26c1c5adaab"
  license "MIT"
  head "https://github.com/IbrarYunus/redneedle.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "needle", shell_output("#{bin}/needle --version")
    # `ports` runs the whole lsof sweep and exits — a real end-to-end check
    # that needs no tty.
    system bin/"needle", "ports"
  end
end
