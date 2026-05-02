# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.8"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.8/askimo-darwin-arm64.tar.gz"
      sha256 "495ccee7e460aa4d3216f5900cc234db64d6cbd8f73e1581e1581e96001171f2"
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
