class Qc < Formula
    desc "A simple CLI tool for crafting quantum circuits."
    homepage "https://github.com/mattrltrent/quantum_crafter"
    url "https://github.com/mattrltrent/quantum_crafter/archive/v0.0.2.tar.gz"
    sha256 "b70c905ffa51ed53fdf8d7b9811b1b63265176e6dc4adc42969cd8ec767520d8"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"qc"
    end
  
    test do
      assert_match "qc version", shell_output("#{bin}/qc --version")
    end
  end
  
