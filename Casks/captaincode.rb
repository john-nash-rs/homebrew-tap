cask "captaincode" do
  postflight do
    system_command "/usr/bin/xattr",
                  args: ["-dr", "com.apple.quarantine", "#{staged_path}/captaincode"],
                  must_succeed: false
  end

  version "0.4.0"
  on_macos do
    on_arm do
      sha256 "6c4cdb0d7fc1ec74a864f83cf6f7843b14830ab5aa681bd64762f67dba6c2267"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.4.0/captaincode_0.4.0_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "31763a070cff39d1eede479b0ac1edc3bd7592ba8e9d13da96d8b568adba18ee"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.4.0/captaincode_0.4.0_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "d434d606c92c00372dde7bd18d4bdc0e9c8777aaf27cbb1912ae1b3258fec307"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.4.0/captaincode_0.4.0_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "5f21adc36c0ab0959caebc64b6753238a0fa535d043abacca5a8a9a1858556f8"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.4.0/captaincode_0.4.0_linux_amd64.tar.gz"
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
