# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/askimo-ai/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.4.5"
      url "https://github.com/askimo-ai/askimo/releases/download/v1.4.5/askimo-darwin-arm64.tar.gz"
      sha256 "be5e5326f2dac2c5507ebc7ef81ffabfdb0683b28e68ed79d3810b57642afd1f"
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
