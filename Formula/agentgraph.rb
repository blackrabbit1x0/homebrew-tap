class Agentgraph < Formula
  desc "Attack-path analysis for autonomous AI agents"
  homepage "https://github.com/blackrabbit1x0/agentgraph"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.1/agentgraph-darwin-amd64.tar.gz"
      sha256 "43f411b36a593a7e07d0dbd8af7dbe9ae681d90260d786cc37841fc357f89543"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.1/agentgraph-darwin-arm64.tar.gz"
      sha256 "fde8b1f7da4fea7e75507797c40fd68e16ea4601e68632314aafe101f03a09cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.1/agentgraph-linux-amd64.tar.gz"
      sha256 "3016cc20608a066e460c9117a7dfa163298d394bdd27dfd0e462961e79a86891"
    end
    if Hardware::CPU.arm?
      url "https://github.com/blackrabbit1x0/agentgraph/releases/download/v0.5.1/agentgraph-linux-arm64.tar.gz"
      sha256 "31ee358863830e456d24b43384998a436bb039e4bdb462921ae2d20835006b9f"
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
