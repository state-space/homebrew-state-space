# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI application to interface with State Space"
  homepage "https://state.space"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/state-space/cli/releases/download/v0.0.1/state-space_darwin_x86_64"
      sha256 "dcbace4e6e60ec8812e4c8d435e11e86c6a102e548b8f6b20ea20d0c45464c9f"

      def install
        bin.install "state-space_darwin_x86_64" => "state-space"
      end
    end
    on_arm do
      url "https://github.com/state-space/cli/releases/download/v0.0.1/state-space_darwin_arm64"
      sha256 "45eaadc37697efbae8fe8ac1e4917c0c80672ee859095b263bfa0b4adebffd3e"

      def install
        bin.install "state-space_darwin_arm64" => "state-space"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/state-space/cli/releases/download/v0.0.1/state-space_linux_x86_64"
        sha256 "11f3e10fedcb3358b2641051bce7d6c143e97e78ee5094837ae039b1ae872bb2"

        def install
          bin.install "state-space_linux_x86_64" => "state-space"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/state-space/cli/releases/download/v0.0.1/state-space_linux_arm64"
        sha256 "9d72b6ca498a87ab2282efa4f882c7de9ddb1f8aee08a8610048cc6dda1d5897"

        def install
          bin.install "state-space_linux_arm64" => "state-space"
        end
      end
    end
  end

  test do
    system "#{bin}/state-space --version"
  end
end
