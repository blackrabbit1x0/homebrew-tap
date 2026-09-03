class Agentgraph < Formula
  desc "Attack-path analysis for autonomous AI agents"
  homepage "https://github.com/blackrabbit1x0/agentgraph"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.1/agentgraph-darwin-amd64.tar.gz"
      sha256 "0ff5284689ce4585698fd568b1421fb2e267fe13e1ce3c1450983a8b3789b6ba"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.1/agentgraph-darwin-arm64.tar.gz"
      sha256 "dc07d1034a4a75299bc072f8d1d2acf79ea2a2d5336197484f98e194ff5d5a39"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.1/agentgraph-linux-amd64.tar.gz"
      sha256 "71b9f35ee9ccf89eecdb2002a4b015c99cc7ba3610b65a1468a4b8580ad96614"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.6.1/agentgraph-linux-arm64.tar.gz"
      sha256 "6b70a8d7106c42966bf24ee37793fc0921e0a8d211709b9e4711dee9dc74badd"
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
