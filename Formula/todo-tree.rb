# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "2cd1756058d2f96c99d10f6444ea0227662dfaeb0ace0990ba296c3412504ae8"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "29b0fcbe5d19af0a85e5f0cc67c4b5ce28be6c99aabf09f95ba81456a15d9c81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4686ce41a3e84ae0427e011ccdf516c50c5e29c333122dc5281df2eb897b5d8"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7da2534a42c5cc0cae667193872f8a99f2262a698ed455b3e3087073a143c5d3"
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
