# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/askimo-ai/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.4.4"
      url "https://github.com/askimo-ai/askimo/releases/download/v1.4.4/askimo-darwin-arm64.tar.gz"
      sha256 "f3935858ae73309ae9b631d34ec52fa79abb9706b0d6e1daa729eba66572673d"
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
