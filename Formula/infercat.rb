# typed: false
# frozen_string_literal: true

# Written by the Infercat release process from the published GitHub Release and its checksums
# (GoReleaser's formula layout; see docs/RELEASE.md in infercat/infercat).
class Infercat < Formula
  desc "Share the model on your machine with friends: one binary, one invite code, a browser"
  homepage "https://infercat.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infercat/infercat/releases/download/v0.1.0/infercat_0.1.0_darwin_amd64.tar.gz"
      sha256 "f1b0f2ef82505b3b7df3c31b38be1036c60aafe6ac1a73383ca5eaee4e464dac"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/infercat/infercat/releases/download/v0.1.0/infercat_0.1.0_darwin_arm64.tar.gz"
      sha256 "5b5ba7e5c9234a1fc40b9aa5b48fb0ba3cb510e4af0cb50c52ae7c9ac998e05c"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.0/infercat_0.1.0_linux_amd64.tar.gz"
      sha256 "9c6110aef95c28f8c3c53b1e85c52f62bdf1b5dce8ac24291108a30f62af51e0"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.0/infercat_0.1.0_linux_arm64.tar.gz"
      sha256 "2193d77f31c4b69e0c6b9feb99ef760cbcfe1ae73926db250ec438f7d6f7ed16"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  test do
    system "#{bin}/infercat", "version"
  end
end
