# PoPP Module — Swift Package Mirror

Public Swift Package Manager distribution for the **PoPP Module** (Proof of Patient Presence module for German eHealth Cardlink workflows). This repository hosts only the `Package.swift` manifest and the XCFramework binary releases — the SDK source lives in the private [`scoop-software/scoop-popp-module`](https://github.com/scoop-software/scoop-popp-module) repository.

## Usage

In your app or framework's `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/scoop-software/scoop-popp-module-spm.git", from: "0.17.0")
]
```

Or in Xcode: File → Add Package Dependencies… → enter the URL above.

Then import the framework where needed:

```swift
import ScoopPopp
```

## Versioning

Tags in this repository (`v0.17.0`, `v0.18.0`, …) correspond 1:1 with releases of the underlying PoPP module.

## License

Proprietary. © Scoop Software GmbH.
