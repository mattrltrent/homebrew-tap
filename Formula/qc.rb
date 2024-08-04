class Qc < Formula
    desc "A simple CLI tool for crafting quantum circuits."
    homepage "https://github.com/mattrltrent/quantum_crafter"
    url "https://github.com/mattrltrent/quantum_crafter/archive/v0.0.5.tar.gz"
    sha256 "c579982ebe871da91d5f88866d8fc163c02fbb94d3be74f0822b82cadc5dadf5"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"qc"
    end
  
    test do
      assert_match "qc version", shell_output("#{bin}/qc --version")
    end
  end
  
