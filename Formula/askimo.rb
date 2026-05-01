# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.7"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.7/askimo-darwin-arm64.tar.gz"
      sha256 "9ac55a47732e0d9d82355241f83b575dd4cc0287fded3bf08ea139d8f59ab88c"
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
