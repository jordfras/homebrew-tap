# Written by git-tailor's release workflow on each release; edits made here are
# overwritten by the next one.
class GitTailor < Formula
  desc "Interactive terminal tool for tidying up Git commits on a branch"
  homepage "https://github.com/jordfras/git-tailor"
  license "Apache-2.0"

  # The universal archive runs on both Apple chips.
  if OS.mac?
    url "https://github.com/jordfras/git-tailor/releases/download/v3.1.0/gt-v3.1.0-universal-apple-darwin.tar.gz"
    sha256 "e5406040ddd154e2e4202c20fea6054cfc0b21fd64bea1f52b552f4eee59e37a"
  elsif Hardware::CPU.arm?
    url "https://github.com/jordfras/git-tailor/releases/download/v3.1.0/gt-v3.1.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "3baeb2c646fd1599b14c45d68b167398754f088ebfbee62bc0da2f525bd808d0"
  else
    url "https://github.com/jordfras/git-tailor/releases/download/v3.1.0/gt-v3.1.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "10b56f23cbb3a43491e0a90757ee0417132552236a9b265f1a702de27ada4f1c"
  end

  def install
    bin.install "gt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gt --version")
  end
end
