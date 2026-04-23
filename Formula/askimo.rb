# typed: false
# frozen_string_literal: true

class Askimo < Formula
  desc "AI-powered terminal assistant for multiple LLM providers"
  homepage "https://github.com/haiphucnguyen/askimo"
  license "AGPLv3"

  on_macos do
    on_arm do
      version "1.3.4"
      url "https://github.com/haiphucnguyen/askimo/releases/download/v1.3.4/askimo-darwin-arm64.tar.gz"
      sha256 "f5af58a886ccc91d9fd1708741c87fe427c2d1fd0132250f686b4b6471a7ca33"
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
