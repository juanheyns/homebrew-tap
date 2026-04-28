class AgentAws < Formula
  desc "Run CLI agents against AWS in a scoped read-only sandbox"
  homepage "https://github.com/juanheyns/agent-aws"
  url "https://github.com/juanheyns/agent-aws/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "b83b2dacc1f37c4af510745b636f29b501a8a992228bf3e630d8be0421f88d5f"
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
