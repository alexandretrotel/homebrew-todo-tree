# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/atrtde/todo-tree"
  version "0.5.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "9122a5fdd8694f035ca41cb434ee5560603ad1ec46f26ea790eb89dd8b81fe37"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "08121ec77a203b92d7bb5d2c7893a4d840642a2e08c0724110366a6951060c3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5d70fe01722dec079e5e7baebc81ce5e1d0dba0eea83c6a68573ec4a753d499"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aab2334398e397382d8c055d50f582e263e86667c7d333e1748920c806188d6a"
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
