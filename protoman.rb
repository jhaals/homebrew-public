class Program < Formula
    desc "Protoman CLI tool"
    homepage "https://github.com/spotify/protoman"
    url "https://github.com/spotify/protoman/releases/download/0.0.1/protoman-darwin-amd64.zip"
    version "0.0.1"
    sha256 "451a43026d415bb709af6ac1eba9b4be1af4c3ad8e4b530773436693a32a051a"
    depends_on "git"

    def install
      bin.install "program"
    end
  end