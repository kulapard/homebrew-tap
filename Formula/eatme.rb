# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eatme < Formula
  desc "Simple tool to manage multiple git/hg repositories at once. It goes through all subdirectories recursively and concurrently execute specified command in all af them."
  homepage "https://github.com/kulapard/go-eatme"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/go-eatme/releases/download/v0.1.25/go-eatme_Darwin_x86_64.tar.gz"
      sha256 "1133f948f2b4007665526821e71e6b00f97d62297e9a337d917f8c1359e73ff0"

      def install
        bin.install "eatme"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kulapard/go-eatme/releases/download/v0.1.25/go-eatme_Darwin_arm64.tar.gz"
      sha256 "b545d1210d145b357c1aebf1a8535591b8db0121f68c954be5706faff7dfc9e7"

      def install
        bin.install "eatme"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/go-eatme/releases/download/v0.1.25/go-eatme_Linux_armv6.tar.gz"
      sha256 "75c13a534a56122600046358841a6f2f6b2dfc20186e2b4d3ff52f2adf103683"

      def install
        bin.install "eatme"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/go-eatme/releases/download/v0.1.25/go-eatme_Linux_arm64.tar.gz"
      sha256 "f5cfda40280feac2f8b98dd8cee5fe071426a9b84ba1c97b068119b047fb9209"

      def install
        bin.install "eatme"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/go-eatme/releases/download/v0.1.25/go-eatme_Linux_x86_64.tar.gz"
      sha256 "98794c3284329ebccb0c84717c7e3453068c5692a3c759be44c4615ab9b25067"

      def install
        bin.install "eatme"
      end
    end
  end

  test do
    system "#{bin}/eatme branch"
  end
end
