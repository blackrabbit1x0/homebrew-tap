class Agentgraph < Formula
  desc "Attack-path analysis for autonomous AI agents"
  homepage "https://github.com/blackrabbit1x0/agentgraph"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.0/agentgraph-darwin-amd64.tar.gz"
      sha256 "ccff09b47c96cd4d670425bd230072ac7d8658943b8a28ecd7e5a3a5872e8ff0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.0/agentgraph-darwin-arm64.tar.gz"
      sha256 "1a996da4fa29e1d69cb77a4be278f0b30506ec7514515f6e1b841ce882662b60"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.0/agentgraph-linux-amd64.tar.gz"
      sha256 "934e43ae26c47d7967ed9f6a5ac6eede76ea923a407b3a9fa74f99f906a35bcd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.0/agentgraph-linux-arm64.tar.gz"
      sha256 "aa09de15a74509eaf7c36aa2ce959523f90034b766fca1284392511afc98ccb4"
    end
  end

  def install
    bin.install "agentgraph"
  end

  def caveats
    <<~EOS
      Get started with the demo environment:
        agentgraph demo
        agentgraph demo watch
    EOS
  end

  test do
    assert_match "AgentGraph", shell_output("#{bin}/agentgraph --help 2>&1", 0)
  end
end
