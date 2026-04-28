class AgentAws < Formula
  desc "Run CLI agents against AWS in a scoped read-only sandbox"
  homepage "https://github.com/juanheyns/agent-aws"
  url "https://github.com/juanheyns/agent-aws/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "9666031cfe782a22362d1fc86e309d98ee4b608b8b5f26abd6a1ca6fe8f96ef9"
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
