class Ghloc < Formula
    desc "Fetches your total LOC and commits from all your GitHub repos"
    homepage "https://github.com/mattrltrent/ghloc"
    url "https://github.com/mattrltrent/ghloc/archive/v1.0.0.tar.gz"
    sha256 "acb9d98cc7bb8a461a1b52abaae3a012ff01d97dae987f4adf00aec733bbecc9" 
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      # This test will run `ghloc --version` and check that it starts with "ghloc "
      assert_match /^ghloc /, shell_output("#{bin}/ghloc --version")
    end
  end
  