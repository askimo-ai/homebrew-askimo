# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/askimo-ai/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.4.2"
      url "https://github.com/askimo-ai/askimo/releases/download/v1.4.2/askimo-darwin-arm64.tar.gz"
      sha256 "6e7f0a014bc1ab4be292292691a43775443b3f4806e9b0081f992c9809bbd538"
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
