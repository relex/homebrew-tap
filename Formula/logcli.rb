class Logcli < Formula
  desc "Grafana Loki logcli"
  homepage "https://github.com/grafana/loki"
  version "1.4.1"

  if OS.mac?
    url "https://github.com/grafana/loki/releases/download/v#{version}/logcli-darwin-amd64.zip"
    sha256 "d8a828cd758bc858b1dd1f4693457ca16e7554adddd1d932a604258a62c110d8"
  elsif OS.linux?
    url "https://github.com/grafana/loki/releases/download/v#{version}/logcli-linux-amd64.zip"
    sha256 "ba05f010af999c1798fd1cba8c92ec2a93a60a40d2c5132732541ae05b3758e0"
  end
  
  def install
    if OS.mac?
      bin.install "logcli-darwin-amd64"
      mv bin/"logcli-darwin-amd64", bin/"logcli"
    elsif OS.linux?
      bin.install "logcli-linux-amd64"
      mv bin/"logcli-linux-amd64", bin/"logcli"
    end
  end
end
