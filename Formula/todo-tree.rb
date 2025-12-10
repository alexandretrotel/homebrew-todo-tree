# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "d2c30b5eb0ed851e75b0cd320d003da01fcbf72357f32d7a8b7b7bc2677b0b50"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "ded25d0b4eee97811b45bbc4056c1aeedf0d33a90d4eba50288d372e18fb3408"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f65ab876fbbeda6828187c82b1e41cd1a5fcfe154cc9cc9714247ccc4b303b22"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e278b8b088f48f47ed3571232871996fe8e275c70b04aeae7287d36e3a10cca6"
    end
  end

  def install
    bin.install "todo-tree"
    bin.install "tt"
  end

  test do
    system "#{bin}/todo-tree", "--version"
  end
end
