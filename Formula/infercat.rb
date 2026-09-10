# typed: false
# frozen_string_literal: true

# Written by the Infercat release process from the published GitHub Release and its checksums
# (GoReleaser's formula layout; see docs/RELEASE.md in infercat/infercat).
class Infercat < Formula
  desc "Share the model on your machine with friends: one binary, one invite code, a browser"
  homepage "https://infercat.ai"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infercat/infercat/releases/download/v0.1.3/infercat_0.1.3_darwin_amd64.tar.gz"
      sha256 "ae7108d76267c06a2e8d69eeedc012c22df083c99a1780d4434747d39b7808c5"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/infercat/infercat/releases/download/v0.1.3/infercat_0.1.3_darwin_arm64.tar.gz"
      sha256 "363e15c3393d86ed3de5b85695746001a9882f236aba797c6b9547b31b4013e2"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.3/infercat_0.1.3_linux_amd64.tar.gz"
      sha256 "efc83344e2292a352582c2778d33ddf1b00e34190daa8ec51e941b8ab88eb125"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.3/infercat_0.1.3_linux_arm64.tar.gz"
      sha256 "d92248dd37fcc7400a3bb90a35b2929a5c4c5e6cc0ba5bcc04cc1704f7cf4a2c"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  test do
    system "#{bin}/infercat", "version"
  end
end
