# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GcoreCli < Formula
  desc "The official Gcore CLI"
  homepage "https://github.com/G-Core/gcore-cli"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/g-core/gcore-cli/releases/download/v0.3.0/gcore-cli_darwin_amd64"
      sha256 "43f82471afb7c5af91029bc8ff6f27b223a0f89f117a925fa31b55e8f778cd63"

      def install
        bin.install "gcore-cli_darwin_amd64" => "gcore-cli"
        chmod 0555, bin/"gcore-cli"
        generate_completions_from_executable(bin/"gcore-cli", "completion")
      end
    end
    on_arm do
      url "https://github.com/g-core/gcore-cli/releases/download/v0.3.0/gcore-cli_darwin_arm64"
      sha256 "6659a0c801f7a795e88d74720ddb78f5387295d1b5ca639e73cdcecc0ae42d0c"

      def install
        bin.install "gcore-cli_darwin_arm64" => "gcore-cli"
        chmod 0555, bin/"gcore-cli"
        generate_completions_from_executable(bin/"gcore-cli", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/g-core/gcore-cli/releases/download/v0.3.0/gcore-cli_linux_amd64"
        sha256 "a7269b7f13125fd049afcdaafcaa661dfaabb6add4bc5d391dcc58755821305b"

        def install
          bin.install "gcore-cli_linux_amd64" => "gcore-cli"
          chmod 0555, bin/"gcore-cli"
          generate_completions_from_executable(bin/"gcore-cli", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/g-core/gcore-cli/releases/download/v0.3.0/gcore-cli_linux_arm64"
        sha256 "4bb4201f29b26f2fd4d9291bb5d219119b89003ff6821f2ea9f300748ed3ac1f"

        def install
          bin.install "gcore-cli_linux_arm64" => "gcore-cli"
          chmod 0555, bin/"gcore-cli"
          generate_completions_from_executable(bin/"gcore-cli", "completion")
        end
      end
    end
  end
end
