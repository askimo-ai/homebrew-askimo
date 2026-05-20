# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/askimo-ai/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.4.3"
      url "https://github.com/askimo-ai/askimo/releases/download/v1.4.3/askimo-darwin-arm64.tar.gz"
      sha256 "52df3610ccdca9abdf163ac55f1016e3ec160a4351170a8b6bc9d988c1fb153f"
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
