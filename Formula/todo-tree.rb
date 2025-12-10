# typed: false
# frozen_string_literal: true

# This class represents the TodoTree formula for Homebrew.
class TodoTree < Formula
  desc 'A CLI tool to find and display TODO-style comments in your codebase'
  homepage 'https://github.com/alexandretrotel/todo-tree'
  version '0.2.0'
  license 'MIT'

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 'PLACEHOLDER_ARM64_SHA256'
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 'PLACEHOLDER_X86_64_SHA256'
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 'PLACEHOLDER_LINUX_ARM64_SHA256'
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 'PLACEHOLDER_LINUX_X86_64_SHA256'
    end
  end

  def install
    bin.install 'todo-tree'
    bin.install 'tt'
  end

  test do
    system "#{bin}/todo-tree", '--version'
  end
end

