# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/atrtde/todo-tree"
  version "0.5.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "415dbeaf7a957461e536571867d824daf21c63354c0d8f1beeb199bcef9e8843"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "9f702501c4bae83674d561b64928393b16b9d77463d982814f725794d4f41771"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfeb9fbd84c05bed4c1d4360df70d82b70f376ce8d2f8ae84e3a348a442fd84f"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57bf580fbbb8f9f99d6d46e39d07a6a6c991ee517a33468780a5dec43c02a2b1"
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
