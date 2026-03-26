# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.24"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.24/askimo-darwin-arm64.tar.gz"
      sha256 "8641308ae4ffe989e9b45b013fa543b0fc56fee95e1d3b5e3f4520fc22e81987"
    end
  end
  
  def install
    # Expect the tarball to contain a single binary named "askimo"
    bin.install "askimo"
  end
  
  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
