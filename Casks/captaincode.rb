cask "captaincode" do
  version "0.3.0"

  on_macos do
    on_arm do
      sha256 "715b2ed3d3943bfb2e79a92507d02163ae2f69e19f4e0b49d396cb1a1066db15"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.0/captaincode_0.3.0_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "8a58747c43d5a68f8222dc84c2af1484affdfd49af18e02fe210061022196c97"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.0/captaincode_0.3.0_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "c54976393101e52c22a7d6d85190735cedbbce89cb78311365ecf578a7d73f5c"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.0/captaincode_0.3.0_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "0b6592ee36e8932f63cb709f159082061031654d1edaedba1278cf88a16fbab6"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.0/captaincode_0.3.0_linux_amd64.tar.gz"
    end
  end

  name "captaincode"
  desc "A single-user coding-agent harness"
  homepage "https://github.com/john-nash-rs/captaincode"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "captaincode"

  # No zap stanza required
end