# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.5"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.5/askimo-darwin-arm64.tar.gz"
      sha256 "16bcf925cfeef71335139dc3ba2a650c268632240cb83f7618166fa65d58cc7c"
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
