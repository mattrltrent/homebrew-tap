class Qc < Formula
    desc "A simple CLI tool for crafting quantum circuits."
    homepage "https://github.com/mattrltrent/quantum_crafter"
    url "https://github.com/mattrltrent/quantum_crafter/archive/v0.0.4.tar.gz"
    sha256 "bea3010eb51bfdc10d28a19b3e19cf0456ad54b19acba1166c6230eecef4c00c"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"qc"
    end
  
    test do
      assert_match "qc version", shell_output("#{bin}/qc --version")
    end
  end
  
