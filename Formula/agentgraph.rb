class Agentgraph < Formula
  desc "Attack-path analysis for autonomous AI agents"
  homepage "https://github.com/blackrabbit1x0/agentgraph"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.0/agentgraph-darwin-amd64.tar.gz"
      sha256 "be97f637fe33b1fbc83cfe3f7411f38d033d8346b42f8d83c8cd44ee3ac978ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.0/agentgraph-darwin-arm64.tar.gz"
      sha256 "438ff99096b078e0c22ddb78fcd08823ff0adf57b3b2b8eb3812f5947c3d8cdb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.0/agentgraph-linux-amd64.tar.gz"
      sha256 "809512b45d782f8b9ca09086fd657229c4f4b56628f1e5264ef4ed1e11ff5fbc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.0/agentgraph-linux-arm64.tar.gz"
      sha256 "705c02df6a4552b47cc4e77e490e3c4d67b5f51d935191932fa8e8b293d435d1"
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
