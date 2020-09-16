# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://github.com/cuelang/cue"
  version "0.3.0-alpha2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cuelang/cue/releases/download/v0.3.0-alpha2/cue_0.3.0-alpha2_Darwin_x86_64.tar.gz"
    sha256 "3f7c02c073aa75661e8eb13e5d2ec218a8a864972a177b0d76e4180301d3c069"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cuelang/cue/releases/download/v0.3.0-alpha2/cue_0.3.0-alpha2_Linux_x86_64.tar.gz"
      sha256 "728bc0ef9b89f7fc0e19bbdbe1c1cc9efdf6d154771c1ac1f666081ea9718836"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cuelang/cue/releases/download/v0.3.0-alpha2/cue_0.3.0-alpha2_Linux_arm64.tar.gz"
        sha256 "4da2c58b7637da695e50c63c046adb1a761f1ade2c8fa7fb8e694dfde8e0546f"
      else
      end
    end
  end

  def install
    bin.install "cue"
  end

  test do
    system "#{bin}/cue version"
  end
end
