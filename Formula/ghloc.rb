class Ghloc < Formula
    desc "Fetches your total LOC and commits from all your GitHub repos"
    homepage "https://github.com/mattrltrent/ghloc"
    url "https://github.com/mattrltrent/ghloc/archive/v1.0.0.tar.gz"
    sha256 "7f1578dac8f0a8d620f39352924f0085932404141516c4780a9bee7efa4c8b0a"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      # This test will run `ghloc --version` and check that it starts with "ghloc "
      assert_match /^ghloc /, shell_output("#{bin}/ghloc --version")
    end
  end
  