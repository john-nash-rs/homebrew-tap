cask "captaincode" do
  postflight do
    system_command "/usr/bin/xattr",
                  args: ["-dr", "com.apple.quarantine", "#{staged_path}/captaincode"],
                  must_succeed: false
  end

  version "0.3.3"
  on_macos do
    on_arm do
      sha256 "2dfc9484c254f6fdd01ea1647b012ee4c13a697cfa9660327afd467a67d81c89"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.3/captaincode_0.3.3_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "1767c5bc0ddbb57c314eb07e48fb84e7429ccbdbe4a636625267a2b5dc75a347"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.3/captaincode_0.3.3_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "881c98f4aad0edfbfdb2e6a4964c7abd5a3830301750b11868aee72f8fe59567"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.3/captaincode_0.3.3_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "b0a1b482ef6f5f1465f283a7b1db6acaf205d7a3ec948b1a231c53ac8bf8dee0"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.3/captaincode_0.3.3_linux_amd64.tar.gz"
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
