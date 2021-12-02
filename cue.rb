# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://cuelang.org"
  version "0.4.1-beta.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.4.1-beta.6/cue_v0.4.1-beta.6_darwin_amd64.tar.gz"
      sha256 "961decd98074838fce62f12ed8e562303731bace9c55db3b23ea4a5d02745a29"

      def install
        bin.install "cue"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cue-lang/cue/releases/download/v0.4.1-beta.6/cue_v0.4.1-beta.6_darwin_arm64.tar.gz"
      sha256 "2070dccf79cd6faf5c02d1f340ca6c4e5c2ff74abb0c0d30aab2e1cb61fa1bb6"

      def install
        bin.install "cue"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cue-lang/cue/releases/download/v0.4.1-beta.6/cue_v0.4.1-beta.6_linux_arm64.tar.gz"
      sha256 "af4a4420172a57a6a6089d7f0b4e1e121e2865a562233da615af5d7f6083af76"

      def install
        bin.install "cue"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cue-lang/cue/releases/download/v0.4.1-beta.6/cue_v0.4.1-beta.6_linux_amd64.tar.gz"
      sha256 "6c4b0913987f28e4851b5df2cec21fcaf903e95db61e3ab87ac8b2a9d551f78a"

      def install
        bin.install "cue"
      end
    end
  end

  test do
    system "#{bin}/cue version"
  end
end
