cask "captaincode" do
  postflight do
    system_command "/usr/bin/xattr",
                  args: ["-dr", "com.apple.quarantine", "#{staged_path}/captaincode"],
                  must_succeed: false
  end

  version "0.5.0"
  on_macos do
    on_arm do
      sha256 "c0430a42ca9a007e3c36d48ef712d3016d29b2ef74550844b99508f26ce05548"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.5.0/captaincode_0.5.0_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "6de9d35dd61af6e808ac33f5a0cadc3384a07b13baa2e3800adef7b7856c5881"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.5.0/captaincode_0.5.0_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "71cd022f734e51f494dcf6e38c8e16d35f4c9108c6175f4264276bcccef55f15"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.5.0/captaincode_0.5.0_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "532d1aae4e82bfd11ead3f50ec9b48b00e97cf664df83e5842e166609b4b57e3"
      url "https://github.com/john-nash-rs/captaincode/releases/download/v0.5.0/captaincode_0.5.0_linux_amd64.tar.gz"
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
