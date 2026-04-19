# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.2"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.2/askimo-darwin-arm64.tar.gz"
      sha256 "8b80928e2d9cc0fcaa6e8170bddb4791be3d4e15e3b39ebfe2bd6af37fae0dfb"
    end
  end

  def install
    bin.install "askimo"
  end

  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
