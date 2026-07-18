# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/atrtde/todo-tree"
  version "0.6.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "1d6387a22f8d13e756f56bb7d668fd6282b591d2f5442994ecbd2f528358f2d8"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "6333bd4fdfcb2f8b22e2722e9f8b075a4a41390331d8e1bd5a5464e24b53f963"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4bcc813cbde0b59ac754b4f7bff41dd9a3de02b41c3d82854c50061f8d3a911"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52849ecee37757b4082836eb5be2b2c929e3838d8f50e8e42e9cf3af6b04f12a"
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
