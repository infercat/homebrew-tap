# typed: false
# frozen_string_literal: true

# Written by the Infercat release process from the published GitHub Release and its checksums
# (GoReleaser's formula layout; see docs/RELEASE.md in infercat/infercat).
class Infercat < Formula
  desc "Share the model on your machine with friends: one binary, one invite code, a browser"
  homepage "https://infercat.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infercat/infercat/releases/download/v0.1.1/infercat_0.1.1_darwin_amd64.tar.gz"
      sha256 "0db73675462dba1412240a552eecaeb4aed789d40e485a0ad10bbce2264b4e5e"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/infercat/infercat/releases/download/v0.1.1/infercat_0.1.1_darwin_arm64.tar.gz"
      sha256 "4f45b3860c00478f2a5660efba11f4337b760267d2cd27f76be59e1ce35ab944"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.1/infercat_0.1.1_linux_amd64.tar.gz"
      sha256 "2758870a03200c274a67139b683ba835d735071674482fd85dba32833c7fa06a"

      define_method(:install) do
        bin.install "infercat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/infercat/infercat/releases/download/v0.1.1/infercat_0.1.1_linux_arm64.tar.gz"
      sha256 "1e145b92bff2aed0d03df0429eb9cb2c95dc94c45dc5c8f522e51b791cce1e48"

      define_method(:install) do
        bin.install "infercat"
      end
    end
  end

  test do
    system "#{bin}/infercat", "version"
  end
end
