# Written by git-tailor's release workflow on each release; edits made here are
# overwritten by the next one.
class GitTailor < Formula
  desc "Interactive terminal tool for tidying up Git commits on a branch"
  homepage "https://github.com/jordfras/git-tailor"
  license "Apache-2.0"

  # The universal archive runs on both Apple chips.
  if OS.mac?
    url "https://github.com/jordfras/git-tailor/releases/download/v4.0.0/gt-v4.0.0-universal-apple-darwin.tar.gz"
    sha256 "7ddb6eb90015c961528174f70ccb3aa2a82e67d3b15c1e73b79782cc75c0c29d"
  elsif Hardware::CPU.arm?
    url "https://github.com/jordfras/git-tailor/releases/download/v4.0.0/gt-v4.0.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "751b607d3ec6e37799acf66b93d4ac21b6eed7a8b60e10a42ac5fe0764c10ad4"
  else
    url "https://github.com/jordfras/git-tailor/releases/download/v4.0.0/gt-v4.0.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "69019271bd435030f4022f34dc3dd62a3dcdf5eb081d28b35679cdfc90dd933d"
  end

  def install
    bin.install "gt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gt --version")
  end
end
