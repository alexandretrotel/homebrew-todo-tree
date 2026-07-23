# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "0.6.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "fb055583e68e3354823f486205d93e1175110fd2951668621da9010bba85c374"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "28acde9f9e4adedf44cc6ab24e46b5b32050ab18a29ec681de6f4656802bbd47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e60958468c876860f8c69fa39d9d02f51995ec8e00aa1ac2b313b3f5f2f189d"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "052a9016d108d3cc351d59be024d89a2cc525bbf04cc9d540cb410119cb92432"
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
