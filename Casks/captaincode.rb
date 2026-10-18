cask "captaincode" do
  postflight do
    system_command "/usr/bin/xattr",
                  args: ["-dr", "com.apple.quarantine", "#{staged_path}/captaincode"],
                  must_succeed: false
  end

  version "0.3.2"
  on_macos do
    on_arm do
      sha256 "beb45051f62c7ef7701e5354c481b45f692b3d856b47105eec1edf762cbc74ce"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.2/captaincode_0.3.2_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "b408ee896a70d7fc8f9bc28092db93e96bad50fe002489d428107fd99a4694e3"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.2/captaincode_0.3.2_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "e59c759bc17dda098b18933e1616ae528d90d827fb37f6020953b1c0f89f2e55"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.2/captaincode_0.3.2_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "ed23c1a0dfcbd5e0b37fcf8261d108957bdb67f672e0eadef54436fafabec0ff"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.2/captaincode_0.3.2_linux_amd64.tar.gz"
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
