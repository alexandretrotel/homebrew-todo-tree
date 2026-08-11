class TodoTree < Formula
  desc "A command-line tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "1.0.0"
  license "GPL-3.0-or-later"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "4d4f34c5b1ba6b70682a1465d1983e07d25bb6a1dff78611e9211caa1c755e05"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "5a0b452da0a01f379089b423bba5b03a378a58ff2761a31ccbade6b30587df9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10a6c6a18e1cb55f1627b21e4b7dd67bf6c64e3b0a2430cf98f827094ad5562f"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25d379bfd4665081fb97b24d0b13d94c1e0397b2a95d85b0d3c7001670724338"
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
