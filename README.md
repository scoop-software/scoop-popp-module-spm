# ScoopPopp — Swift Package (binary distribution)

Public Swift Package Manager distribution of the **PoPP Module** (Proof of Patient
Presence) for German eHealth Cardlink workflows. This repo hosts only `Package.swift` +
the `ScoopPopp.xcframework` release binary; the SDK source stays in the private
[`scoop-software/scoop-popp-module`](https://github.com/scoop-software/scoop-popp-module) repo.

> **Current release: 0.18.0** · iOS 14+ · **Xcode 26+** · Apple‑Silicon simulator only

> **Note:** if you use the **Cardlink SDK** ([`ScoopCardlink`](https://github.com/scoop-software/cardlink-sdk-spm)),
> PoPP is already bundled inside it — you do **not** need this package. Use this package
> only to consume PoPP standalone, without Cardlink.

## Install

```swift
.package(url: "https://github.com/scoop-software/scoop-popp-module-spm.git", from: "0.18.0")
```

…or in Xcode: **File → Add Package Dependencies…** and paste the URL above.

## Required build settings (Xcode 26)

The framework ships a binary `.swiftmodule` (no library evolution). On the target that
imports `ScoopPopp`, set:

| Setting | Value | Why |
| ------- | ----- | --- |
| `SWIFT_ENABLE_EXPLICIT_MODULES` | `NO` | Xcode 26's explicit‑module build otherwise rebuilds the framework interface and drops the SDK's Swift types. |
| `EXCLUDED_ARCHS[sdk=iphonesimulator*]` | `x86_64` | The simulator slice is arm64 only (Apple Silicon). |

The binary is tied to its build's Swift compiler — **use Xcode 26.x** (rebuilt and
re‑released per Xcode major version).

## Usage

```swift
import ScoopPopp
```

API documentation is available inline in Xcode as **Quick Help** (⌥‑click any symbol). The
full written API reference (incl. the PoPP check‑in section) is at
**[cardlink-sdk-demos/docs/API.md](https://github.com/scoop-software/cardlink-sdk-demos/blob/main/docs/API.md)**.

## Versioning

Tags (`v0.18.0`, …) map 1:1 to the underlying PoPP module release.

## License

Proprietary. © Scoop Software GmbH.
