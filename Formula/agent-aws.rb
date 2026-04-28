class AgentAws < Formula
  desc "Run CLI agents against AWS in a scoped read-only sandbox"
  homepage "https://github.com/juanheyns/agent-aws"
  url "https://github.com/juanheyns/agent-aws/archive/refs/tags/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "0633c4a21f97b36e0662eb79d765b13e01e7487e336d79041a39c323adfa1f5a"
  license "MIT"

  uses_from_macos "python"

  def install
    bin.install "bin/agent-aws"
    pkgshare.install "share/agent-aws/agent-aws.sb"
  end

  def caveats
    on_linux do
      <<~CAVEATS
        Linux requires bubblewrap, installed via your distro's package manager:
          apt install bubblewrap     # Debian / Ubuntu
          dnf install bubblewrap     # Fedora / RHEL
          pacman -S bubblewrap       # Arch
      CAVEATS
    end
  end

  test do
    system bin/"agent-aws", "--help"
  end
end
