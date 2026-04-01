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
      sha256 "b123a7f1b6819b65c23a297baa3c464f583283531a3ca08d03481066ff492ac2"
    end
  end
  
  def install
    # Expect the tarball to contain a single binary named "askimo"
    bin.install "askimo"
  end
  
  test do
    output = shell_output("#{bin}/askimo --version")
    assert_match "askimo", output.downcase
  end
end
