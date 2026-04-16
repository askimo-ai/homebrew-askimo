# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.1"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.1/askimo-darwin-arm64.tar.gz"
      sha256 "6d21a89cec3dc362f6716815fec76efcabe6189953ca3b5192447e3312fa936c"
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
