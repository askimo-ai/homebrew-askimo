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
      sha256 "5574a183ec002464a39f18c26a2873c883eefe7b42f2c9c559b32ce02c69f1b9"
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
