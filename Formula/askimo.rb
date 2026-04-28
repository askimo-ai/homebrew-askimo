# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.6"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.6/askimo-darwin-arm64.tar.gz"
      sha256 "fc15383f0fb63843563c195b3dfd3ba329dd2e82282156529916397461bb346e"
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
