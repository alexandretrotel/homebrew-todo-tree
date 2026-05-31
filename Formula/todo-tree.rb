# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "0.5.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "55868711b346f97b570595721c0d9b0c06d98a8412ce435d03b194bc017a16b1"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "e5b6a05aec84ddeee5780aea66085c58871cafa04c831ac12e5a18b8953ed326"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb741590805239e04e6419c9e04873d2ac747a35696f48399d3b778692f0fa7f"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba5860a62d2e6e82963f4207448a7034d60f535c159a3357b12179af445ece2b"
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
