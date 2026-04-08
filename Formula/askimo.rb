# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.2.26"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.26/askimo-darwin-arm64.tar.gz"
      sha256 "12cfd2e8c9cd505d747da12102b755594e54514ce7df01414a66cf21ca28add7"
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
