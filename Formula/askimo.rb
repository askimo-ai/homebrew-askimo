# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.0/askimo-darwin-arm64.tar.gz"
      sha256 "190540be30efb3530e8efa364816195bd465ea8185060397cc96edc991000de9"
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
