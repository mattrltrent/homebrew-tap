class Qc < Formula
    desc "A simple CLI tool for crafting quantum circuits."
    homepage "https://github.com/mattrltrent/quantum_crafter"
    url "https://github.com/mattrltrent/quantum_crafter/archive/v0.0.6.tar.gz"
    sha256 "d8f4a08eb59d6616f9f52a17733d41e13c737f86239e86f3e5501d9e32ede1d1"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"qc"
    end
  
    test do
      assert_match "qc version", shell_output("#{bin}/qc --version")
    end
  end
  
