cask "captaincode" do
  postflight do
    system_command "/usr/bin/xattr",
                  args: ["-dr", "com.apple.quarantine", "#{staged_path}/captaincode"],
                  must_succeed: false
  end

  version "0.3.1"

  on_macos do
    on_arm do
      sha256 "468e71763c2b919d7399833b7a8788f27c7d78f8177bc8ec9f45a15e5939ba70"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.1/captaincode_0.3.1_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "f61fed58ea18b9bda75af96135e83ca7208656a1ef139ab900d92dee80b3759d"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.1/captaincode_0.3.1_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "70d9e15b54d7f1737a444872a2822b177bb3380cd393139e078c380aad671290"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.1/captaincode_0.3.1_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f23e4c65dad98db755c9e3446137912f3635139bf4bda4b41f2188dfb18ba149"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.3.1/captaincode_0.3.1_linux_amd64.tar.gz"
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