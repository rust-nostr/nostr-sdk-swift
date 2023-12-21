# Nostr SDK – Swift Package

## Installation

This package is intended to be used with the [Swift Package Manager](https://www.swift.org/package-manager/).

### Xcode

Via `File > Add Packages...`, add

```
https://github.com/rust-nostr/nostr-sdk-swift.git
```

as a package dependency in Xcode.

### Swift Package

Add the following to the dependencies array in your `Package.swift`:

``` swift
.package(url: "https://github.com/rust-nostr/nostr-sdk-swift.git", from: "0.6.0"),
```

## 📄 Usage

``` swift
import NostrSDK

let keys = Keys.generate();
let client = Client(keys: keys);

try client.addRelay(url: "wss://relay.damus.io");
client.connect();

let filter = Filter()
    .pubkey(pubkey: keys.publicKey())
    .since(timestamp: Timestamp.now());
let events = try client.getEventsOf(filters: [filter], timeout: nil);
// handle events

let event = try EventBuilder.newTextNote(content: "Hello from Rust Nostr SDK Swift bindings", tags: []).toEvent(keys: keys);
client.sendEvent(event: event);
```

## Information for Maintainers and Contributors

This repository is used to publish a Swift package providing Swift bindings to the Nostr SDK's [underlying Rust implementation](https://github.com/rust-nostr/nostr). The Swift bindings are generated using [UniFFi](https://github.com/mozilla/uniffi-rs).

Any changes to the Nostr SDK, the Swift bindings, and the configuration of this Swift package must be made via the [nostr-sdk](https://github.com/rust-nostr/nostr) repo.

To release a new version of this package, go to the Actions tab of this GitHub repository. Then select the *Publish Swift Package* workflow and run it on the `master` branch. It will ask for a version as input. This allows you to specify the version (e.g., *0.0.1*) of the [nostr-sdk](https://github.com/rust-nostr/nostr) repository that should be released as a Swift package.
