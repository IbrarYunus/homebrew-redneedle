# homebrew-redneedle

Homebrew tap for [redneedle](https://github.com/IbrarYunus/redneedle) — a macOS
system monitor that remembers what happened.

```sh
brew tap ibraryunus/redneedle
brew trust ibraryunus/redneedle   # third-party taps must be trusted once
brew install redneedle
```

If `brew trust` is not a command on your Homebrew, skip that line — it is only
required on versions that refuse to load formulae from untrusted taps.

The binary is called `needle`.

```sh
needle                     # the interactive monitor
needle run -- pnpm build   # measure what a command cost the machine
needle ports               # listening sockets and the projects that own them
needle snapshot            # one plain-text sample
needle json                # newline-delimited JSON samples
```

The formula installs a prebuilt, Developer-ID-signed and Apple-notarized
binary from [redneedle-releases](https://github.com/IbrarYunus/redneedle-releases)
— Apple Silicon, macOS 11 or later. redneedle is closed source. Nothing here
needs `sudo`, entitlements, or a helper process.

To update: `brew update && brew upgrade redneedle`.
