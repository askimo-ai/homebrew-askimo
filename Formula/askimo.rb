# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.9"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.9/askimo-darwin-arm64.tar.gz"
      sha256 "6761a1ca576f3487f10590d13862fb8fb578cc164fd64c53ce78e7f80dec85fc"
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
