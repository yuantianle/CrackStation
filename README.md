# CrackStation, a Decrypter implementation

A library that can decrypt hash passwords with `SHA-1` and `SHA-256` algorithms in the range of `[A-Za-z0-9?!]{1,3}`.

## Overview

**POC v1:** My application does ONE-word-long password decryption. It is for people who wanna do password decryption for hash value generated by one character `^[a-zA-Z0-9?!]$` with `SHA1` algorithm. They forget their password, collect customer information or just want to be a hacker.

**POC v2:** My application does TWO-words-long password decryption. It is for people who wanna do password decryption for hash value generated by one to two characters `^[a-zA-Z0-9?!]{1,2}$` with `SHA1` algorithm. People want to use the station when they forget their password, collect customer information or just want to be a hacker.

**MVP:** My application does THREE-words-long password decryption. It is for people who wanna do password decryption for hash value generated by one to two characters `[A-Za-z0-9?!]{1,3}` with `SHA1` or `SHA256` algorithm. People want to use the station when they forget their password, collect customer information or just want to be a hacker.

## Mission Statement

**NOTE:** The library does not tend to help you to be more convenient as a hacker. Instead, it is a good material to help you to learn **Swift testing** and **Algorithm speed optimization**.

### `Decrypter` cracks unsalted hashes.

The `Decrypter` as the protocol has a structure like this:

```swift
public protocol Decrypter {
    init() 

    func decrypt(shaHash: String) -> String? 
}
```

## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/package-manager) is "a tool for managing the distribution of Swift code. It is integrated with the Swift build system to automate the process of downlading, compiling, and linking dependencies"

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:

```swift
...
dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: /* package url */, from: /*"1.0.0"*/),
],
...
```

DO: Replace contents between `/*...*/`

## Usage

### The API

DO: There is an api called `decrypt`. After include `CrackStation` from the library, you can use the function `decrypt()` to decrypt passwords. `CrackStation.decrypt()` is the public API you can include. `Decrypter` as a protocol, makes the using of `decrypt()` more structured. But the method to use the function is the same.

### An example

```swift
import CrackStation

CrackStation().decrypt(shaHash: "84a516841ba77a5b4648de2cd0dfcb30ea46dbb4")
```

## Author

Tianle Yuan. 
