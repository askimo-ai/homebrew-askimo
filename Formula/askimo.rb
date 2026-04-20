# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.3"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.3/askimo-darwin-arm64.tar.gz"
      sha256 "bde2333c50c1d204bf9f23b92a040f7ecb236aaff697be3906adf21908b06981"
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
