# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI application to interface with State Space"
  homepage "https://state.space"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/state-space/cli/releases/download/v0.0.9/state-space_darwin_x86_64"
      sha256 "a1b75b9a9a717292d707fa286821d28d6267067664815475583d66be2d084090"

      def install
        bin.install "state-space_darwin_x86_64" => "state-space"
      end
    end
    on_arm do
      url "https://github.com/state-space/cli/releases/download/v0.0.9/state-space_darwin_arm64"
      sha256 "b998eb982c648bdef04443c0323e49fafde6ca520ffa851aff76425b9b44dc62"

      def install
        bin.install "state-space_darwin_arm64" => "state-space"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/state-space/cli/releases/download/v0.0.9/state-space_linux_x86_64"
        sha256 "74e11ba115e12d9580510825f98ac901e46aa7b56d44d6b8870bc568e4080af5"

        def install
          bin.install "state-space_linux_x86_64" => "state-space"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/state-space/cli/releases/download/v0.0.9/state-space_linux_arm64"
        sha256 "a22cbcc053ec21eb550a748493d10b14eeed29a4e46b9d8e8441dba2aa5e143c"

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
