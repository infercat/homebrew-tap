# typed: false
# frozen_string_literal: true

# Written by the Infercat release process from the published GitHub Release and its checksums
# (GoReleaser's formula layout; see docs/RELEASE.md in infercat/infercat).
class Infercat < Formula
  desc "Share the model on your machine with friends: one binary, one invite code, a browser"
  homepage "https://infercat.ai"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infercat/infercat/releases/download/v0.1.4/infercat_0.1.4_darwin_amd64.tar.gz"
      sha256 "ad500a58ba01008224e736193ecdcc2829b3735ef401e2ce85a61476f19a1d73"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/infercat/infercat/releases/download/v0.1.4/infercat_0.1.4_darwin_arm64.tar.gz"
      sha256 "4b64b2cec4e7a7e29c996c53c386a4e3441d70c5d419e4953facd54eaaae6fee"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.4/infercat_0.1.4_linux_amd64.tar.gz"
      sha256 "887ff824ae7e9adf8d70e2257098459b9bd00f1f91c464817fdfa95d10987812"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.4/infercat_0.1.4_linux_arm64.tar.gz"
      sha256 "b6889f90a998758b6c539699707c1a0b5cbc2538f3881dcc39509502746e2216"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  test do
    system "#{bin}/infercat", "version"
  end
end
