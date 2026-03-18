# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"
  
  on_macos do
    on_arm do
      version "1.2.23"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.23/askimo-darwin-arm64.tar.gz"
      sha256 "69f80a297d9bc0143172e04c3d6b2fbae6b4f0fb6539870d14ac47b3298a2d54"
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
