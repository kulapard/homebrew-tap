# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gol < Formula
  desc "Terminal version of Conway's Game of Life written in Go"
  homepage "https://github.com/kulapard/gol"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kulapard/gol/releases/download/v0.1.25/gol_Darwin_arm64.tar.gz"
      sha256 "d70a043e57cec9bfad2b4ef485fef7de5902d2cbaed0e4bedf35266d64da75c7"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.1.25/gol_Darwin_x86_64.tar.gz"
      sha256 "1ce804f9c4f1199cdb5cf8f0afd38caa58cb89e14e28b1f753a78518f8351104"

      def install
        bin.install "gol"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.1.25/gol_Linux_x86_64.tar.gz"
      sha256 "bd9010d2e7c5f708d790b381226b432339b3d172a669ad996bb427969455e1bb"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/gol/releases/download/v0.1.25/gol_Linux_armv6.tar.gz"
      sha256 "454a237bf89996b7e2ad6a614699fdc5cde5143a9e02de31e6b8f6bcdc19e76e"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/gol/releases/download/v0.1.25/gol_Linux_arm64.tar.gz"
      sha256 "30ab3d1b29eb21d5949be79630758d32c453a31e23e9df00562b4b4907ea667c"

      def install
        bin.install "gol"
      end
    end
  end

  test do
    system "#{bin}/gol --version"
  end
end
