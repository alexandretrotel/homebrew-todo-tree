# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "f56d9d5c9c8f6890bdca643637f46a8244ea50e4472c95ebff3af7ed26b0e548"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "ebd28f25029ad1549841a9db1b54e623ec8c70fb7fb5b8475fdff326cc860a02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f464c3e72ecbe216af15b2576dfe3996c8e3daa81eec61b2730c050582cc783f"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "854d3b651e80ff6746c770c84065ca6e84826a6fddd87bab4e9ae32cd7695a86"
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
