# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.0.18"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.0.18/askimo-darwin-arm64.tar.gz"
      sha256 "567cb10467ddefc98fbca57c6a9d84ff457e3d0d1c5ace03a66ff936f51dd23a"
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
