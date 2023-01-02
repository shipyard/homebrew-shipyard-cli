# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ShipyardCli < Formula
  desc "A tool to manage Ephemeral Environments on the Shipyard platform"
  homepage "https://shipyard.build/"
  version "1.1.0"
  license "Apache2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shipyardbuild/shipyard-cli/releases/download/v1.1.0/shipyard-darwin-arm64", using: CurlDownloadStrategy
      sha256 "172045040da5dd943e5f3b5e0e21fd0c1a65bc1a2fd3b28ce95fa3cfe35757cc"

      def install
        bin.install "shipyard-darwin-arm64" => "shipyard-darwin-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/shipyardbuild/shipyard-cli/releases/download/v1.1.0/shipyard-darwin-amd64", using: CurlDownloadStrategy
      sha256 "a35a911ec48a1b9704289242440c718ed0be727f6f08b26fa8b2bf727b4d229b"

      def install
        bin.install "shipyard-darwin-amd64" => "shipyard-darwin-amd64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shipyardbuild/shipyard-cli/releases/download/v1.1.0/shipyard-linux-arm64", using: CurlDownloadStrategy
      sha256 "402c10b09a4c3ec9e004d295b773dade8b8c1afd191bffc9fc77df5da300ec88"

      def install
        bin.install "shipyard-linux-arm64" => "shipyard-linux-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/shipyardbuild/shipyard-cli/releases/download/v1.1.0/shipyard-linux-amd64", using: CurlDownloadStrategy
      sha256 "168d1e8774894aa382b023d731c68059bb22a21cbb78fd228db888c007ece675"

      def install
        bin.install "shipyard-linux-amd64" => "shipyard-linux-amd64"
      end
    end
  end
end
