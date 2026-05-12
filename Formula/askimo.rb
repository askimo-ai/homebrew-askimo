# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.4.0"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.4.0/askimo-darwin-arm64.tar.gz"
      sha256 "323c1934c8852eeaa0bd53d588c5df0a8e7a6e4a4eb772a351e7961644f50b29"
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
