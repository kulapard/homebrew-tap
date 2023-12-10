# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gol < Formula
  desc "Terminal version of Conway's Game of Life written in Go"
  homepage "https://github.com/kulapard/gol"
  version "0.1.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kulapard/gol/releases/download/v0.1.26/gol_v0.1.26_macos_arm64.tar.gz"
      sha256 "255bde389cf75362eef18045a2cadb72bbf0652347250e63431f204963860982"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.1.26/gol_v0.1.26_macos_x86_64.tar.gz"
      sha256 "a2784389b90d2989372e0803b4e535ad007506b0e95015179c8b8ddb204f4eaa"

      def install
        bin.install "gol"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kulapard/gol/releases/download/v0.1.26/gol_v0.1.26_linux_x86_64.tar.gz"
      sha256 "94fed5c72445ec44058652aaa7bead0ab65871e89fff551dadd238aac884eaec"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/gol/releases/download/v0.1.26/gol_v0.1.26_linux_arm.tar.gz"
      sha256 "44287535d9e00fa8c335417aa84727516c90cc0f0bb150b56213a243138cec0f"

      def install
        bin.install "gol"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kulapard/gol/releases/download/v0.1.26/gol_v0.1.26_linux_arm64.tar.gz"
      sha256 "cf67fe4ff87d766386b8415045eacc3af54bd9c4eedf376b7e817b9179a1c06f"

      def install
        bin.install "gol"
      end
    end
  end

  test do
    system "#{bin}/gol --version"
  end
end
