cask "captaincode" do
  version "0.2.0"

  on_macos do
    on_arm do
      sha256 "2de3145a922cb3c3529f35f5354b03fa917fb15854bca572271e7d43d097cb72"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.2.0/captaincode_0.2.0_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "18fb39385abb6250747f1dcd8f94e033ceea2e39625c4ffa9f546ece0ebb0223"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.2.0/captaincode_0.2.0_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "2c0f872e8f30dcf3a372a1631f664f4258fbb9bf9074ccb176c220763cf13a77"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.2.0/captaincode_0.2.0_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "0d4104980f1a48468a0183af48f7d4d692a9bce024c56c8099081aca89944d90"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.2.0/captaincode_0.2.0_linux_amd64.tar.gz"
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
