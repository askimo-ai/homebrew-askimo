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
      sha256 "7ed0713f3c0939f33335301a449294ccf54ffa8d45ee297a7cf7de6db63da034"
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
