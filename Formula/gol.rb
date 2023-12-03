# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gol < Formula
  desc "Terminal version of Conway's Game of Life written in Go"
  homepage "https://github.com/kulapard/gol"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kulapard/gol/releases/download/v0.0.2/gol_Darwin_arm64.tar.gz"
      sha256 "328a6b85ea06e1addb114ee87f617cf4b7822da7e38712ff685eb5b9250de92d"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.0.2/gol_Darwin_x86_64.tar.gz"
      sha256 "f2aff864854d5bc1a304f360eac6175cb592f00c268eda464dec20617de60bba"

      def install
        bin.install "gol"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/gol/releases/download/v0.0.2/gol_Linux_arm64.tar.gz"
      sha256 "ecb8cf7f4b982ea811a8c0824e229624d2b26442176836160a90bdd59cfa09f6"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.0.2/gol_Linux_x86_64.tar.gz"
      sha256 "b943c84dc57bff2e00e383ec42455dd1087702a9b1f0983513f32f54aa3da3b0"

      def install
        bin.install "gol"
      end
    end
  end

  test do
    system "#{bin}/gol --version"
  end
end
