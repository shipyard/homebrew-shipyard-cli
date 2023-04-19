# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc "A tool to manage Ephemeral Environments on the Shipyard platform"
  homepage "https://shipyard.build"
  version "1.3.1"
  license "Apache2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.3.1/shipyard-darwin-arm64"
      sha256 "fa29e97422749d22549182077b9e71f44717640f44d876601960d257b583e484"

      def install
        bin.install "shipyard-darwin-arm64" => "shipyard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.3.1/shipyard-darwin-amd64"
      sha256 "f43e2857c69306ae542c4d18b928dac37d913c172a246a001cba358c29b30e97"

      def install
        bin.install "shipyard-darwin-amd64" => "shipyard"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.3.1/shipyard-linux-arm64"
      sha256 "b08a38cf5d9943299527da78fadb4a5fc4d592ed6e71a9e6e9c89dac21864128"

      def install
        bin.install "shipyard-linux-arm64" => "shipyard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/shipyard/shipyard-cli/releases/download/v1.3.1/shipyard-linux-amd64"
      sha256 "1b4d9122a6758e57e5e825cce60cbb9ed44e1cd563d5aedad80a1f55e20a7cd0"

      def install
        bin.install "shipyard-linux-amd64" => "shipyard"
      end
    end
  end
end
