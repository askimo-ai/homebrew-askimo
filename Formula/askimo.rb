# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.0.11"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.0.11/askimo-darwin-arm64.tar.gz"
      sha256 "8b1043b2be622f0a3bdd5f38622abfc3fe83ea29b0a6e8d668dcdae333eab4f0"
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
