class Ghloc < Formula
    desc "Fetches your total LOC and commits from all your GitHub repos"
    homepage "https://github.com/mattrltrent/ghloc"
    url "https://github.com/mattrltrent/ghloc/archive/v1.0.0.tar.gz"
    sha256 "3db04c62c98e553ad6f33f9b713d6cb1330153cf40c8d2f124a12158fee9bbe9"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      # This test will run `ghloc --version` and check that it starts with "ghloc "
      assert_match /^ghloc /, shell_output("#{bin}/ghloc --version")
    end
  end
  