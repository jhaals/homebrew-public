require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.139/helios-tools-0.9.139-shaded.jar"
  sha256 "678fd5f935f7b1100b7ecca5e760caf6708c9083f1724b46d358abfcaf838847"
  version "0.9.139"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.139-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.139-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
