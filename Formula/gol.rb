# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gol < Formula
  desc "Terminal version of Conway's Game of Life written in Go"
  homepage "https://github.com/kulapard/gol"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.1.13/gol_Darwin_x86_64.tar.gz"
      sha256 "80c43cba16527bc8dbb7c41486e2f7e1559d90b3d081539de44b706f20f1826e"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kulapard/gol/releases/download/v0.1.13/gol_Darwin_arm64.tar.gz"
      sha256 "e5091f018914b40c1d834a52ad2f09428fdf6e6884dfd28177075384c4cc7b7e"

      def install
        bin.install "gol"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/gol/releases/download/v0.1.13/gol_Linux_armv6.tar.gz"
      sha256 "10e51cac94d3aa1b6b560cd76687daab30c852075688c872a4e066485fd810b7"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/gol/releases/download/v0.1.13/gol_Linux_arm64.tar.gz"
      sha256 "f62a7b2f9c66b5f9447cdf44d6d52797678c19686a578251ca390f1c1fba3d16"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.1.13/gol_Linux_x86_64.tar.gz"
      sha256 "6b7f6110f389b6e4da6bf154be10dd81d860eaeccdf15af5b1afccb6a3fe4294"

      def install
        bin.install "gol"
      end
    end
  end

  test do
    system "#{bin}/gol --version"
  end
end
