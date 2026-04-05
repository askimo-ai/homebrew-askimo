# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.2.25"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.2.25/askimo-darwin-arm64.tar.gz"
      sha256 "d75e5201a2e6e975ae7378fbc643ab2de4916ece32f1d3397201aa5c0b15702a"
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
