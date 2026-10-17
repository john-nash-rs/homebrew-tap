# Homebrew tap for CaptainCode

A single-user coding-agent harness. CaptainCode wraps a language model in the
software required to use one safely: an explicit tool contract, a bounded agent
loop, filesystem sandboxing, durable run state, and a terminal interface that
reports what the system is actually doing.

## Install

```sh
brew tap john-nash-rs/tap
brew install captaincode
```

Or without tapping first:

```sh
brew install john-nash-rs/tap/captaincode
```

## Verify

```sh
captaincode version
captaincode doctor
```

`doctor` reports whether the sandbox your platform needs is available. It
reports and never repairs: CaptainCode refuses to run tools without isolation
rather than falling back to running them unsandboxed.

## Sandbox prerequisite

Installing the binary does not install its sandbox dependency.

| Platform | Backend | Action |
|---|---|---|
| macOS | `/usr/bin/sandbox-exec` | Ships with the OS. Deprecated by Apple; host or MDM policy may remove it. |
| Linux | `bubblewrap` (`bwrap`) | `sudo apt-get install bubblewrap`, plus unprivileged user namespaces |

The cask deliberately declares no `depends_on`. macOS needs nothing installed,
and a macOS cask cannot install or guarantee bubblewrap for Linux users.

## Uninstall

```sh
brew uninstall captaincode
```

This removes the binary only. Session data and any stored credential remain
until you delete them:

```sh
rm ~/.config/captaincode/sessions.db
rm ~/.config/captaincode/openrouter.key
```

## Documentation

Full documentation, including manual and shell-script installation, is in the
[CaptainCode repository](https://github.com/john-nash-rs/captaincode).

## Reporting issues

https://github.com/john-nash-rs/captaincode/issues

## License

CaptainCode is MIT licensed. See the
[repository](https://github.com/john-nash-rs/captaincode/blob/main/LICENSE).

Casks in this tap are generated automatically at release time by GoReleaser.
Do not edit them by hand; a hand-edited cask is overwritten on the next
release.