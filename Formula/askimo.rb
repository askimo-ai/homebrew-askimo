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
      sha256 "ae65dbdc938f0c48203d344c4e12cad2230e8579d805e0544bdfc3c1bad15fdc"
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
