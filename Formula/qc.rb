class Qc < Formula
    desc "A simple CLI tool for crafting quantum circuits."
    homepage "https://github.com/mattrltrent/quantum_crafter"
    url "https://github.com/mattrltrent/quantum_crafter/archive/v0.0.1.tar.gz"
    sha256 "d66e5644670d29b8ca2a10a4d000a5bd8024776c5a9850cf3ec420ac567e198b"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"qc"
    end
  
    test do
      assert_match "qc version", shell_output("#{bin}/qc --version")
    end
  end
  