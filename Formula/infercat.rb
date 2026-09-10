# typed: false
# frozen_string_literal: true

# Written by the Infercat release process from the published GitHub Release and its checksums
# (GoReleaser's formula layout; see docs/RELEASE.md in infercat/infercat).
class Infercat < Formula
  desc "Share the model on your machine with friends: one binary, one invite code, a browser"
  homepage "https://infercat.ai"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infercat/infercat/releases/download/v0.1.2/infercat_0.1.2_darwin_amd64.tar.gz"
      sha256 "2dc3d222673b54a5a14773f73d6b67f9e497ccc6d2c2f25ab19facffed98b012"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/infercat/infercat/releases/download/v0.1.2/infercat_0.1.2_darwin_arm64.tar.gz"
      sha256 "1bffab97d2aa19680ccab4d921501e8ead76b8a8010f5ffd003208e5970a5781"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.2/infercat_0.1.2_linux_amd64.tar.gz"
      sha256 "48234f2dc0750eed8917b9535b7cf529792966456dc78d3cc4dadae344f4c5e3"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.2/infercat_0.1.2_linux_arm64.tar.gz"
      sha256 "f27ed3efa51528f7eefe1517215ca6ec2fb75e9f836dc9abbdb556d4ff3b290d"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  test do
    system "#{bin}/infercat", "version"
  end
end
