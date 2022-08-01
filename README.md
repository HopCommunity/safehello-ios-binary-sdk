# SafeHello iOS SDK
[![SPM](https://img.shields.io/badge/SPM-compatible-green)](https://www.swift.org/package-manager/)

The Safest, Fastest Way To Connect. SafeHello helps you find the person you're looking for quickly and more confidently.

Table of contents
=================

<!--ts-->
   * [Features](#features)
   * [Installation](#installation)
      * [Swift Package Manager](#swift-package-manager)
      * [Cocoapods](#cocoapods)
      * [Manual](#manual)
   * [Usage](#usage)
      * [Connect to SafeHello](#connect-to-safehello)
      * [Launch SafeHello](#launch-safehello)
        * [SwiftUI](#swiftui)
        * [UIKit](#uikit)
   * [License](#license)
<!--te-->

## Features

- **Unique SafeSignal**: You and the person you’re meeting will be assigned a matching, easy-to-spot signal with a unique color combination.

- **One-time SafeCode**: For extra security, view a unique, one-time numerical code generated only for this interaction that appears on both devices.

- **Dynamic SafeSketch**: Go a step further with a sketch: both participants draw, and the resulting image appears on both devices in real-time.

## Installation

The iOS SDK is distributed as binary frameworks and is compatible with iOS 14 and above. Currently, the following distribution methods are supported:

### Swift Package Manager

1. In Xcode, select from the menu `File > Add Packages…` and enter https://github.com/SafeHello/safehello-sdk-ios.git as the package URL.  
  
2. Select the latest version from our [release](https://github.com/SafeHello/safehello-sdk-ios/releases) page. 

3. Choose the app target that should include the SafeHelloSDK product.

### Cocoapods

 1. If you still don’t have a Podfile, run the following command from the terminal at the root of your project:
 ```bash
 $ pod init
 ```
 
 2. Add the following pod under your app target (Podfile):
 ```bash
 $ pod "SafeHelloSDK"
 ```
 
 3. At the root of your project, from the terminal run:
 ```bash
 $ pod install
 ```
 
 4. From now on, you should start working on the workspace that was created by Cocoapods, from the terminal you can open it with:
 ```bash
 $ xed .
 ```

### Manual

1. Download the binary framework (`SafeHelloSDK.zip`) from the [release](https://github.com/SafeHello/safehello-sdk-ios/releases) attachments

2. Unzip the `SafeHelloSDK.zip`

3. Drag the SafeHelloSDK.xcframework into your `App Target > General Tab > Frameworks, Libraries and Embeded Content`, and double-check that the framework  is embedded.

## Usage

To start using the framework, import the SDK:

```swift
import SafeHelloSDK
```
### Connect to SafeHello

To establish a secure connection with SafeHello, from your backend server you will need to provide an endpoint to get a connection token. Once you receive a token, you can set it on the SafeHelloClient and send the connect command.

```swift
private func connectToSafeHello() {
  SafeHelloClient.shared.token = "Your-fetched-connection-token" // Fetch from your backend server
  SafeHelloClient.shared.connect { error in }
}
```

### Launch SafeHello 

#### SwiftUI

To incorporate the SafeHello flow into your app, you just need to use the `showSafeHello(configuration:)` or `presentSafeHello(configuration:)` SwiftUI modifier. The configuration contains details about the current user’s id and event that will be present and also allows us to customize the initial title and subtitle that could be specific to your app.

> `showSafeHello(configuration:)` requires your View to be wrapped in a `NavigationView`

```swift
import SwiftUI
import SafeHelloSDK

struct ContentView: View {
    @State private var configuration: Configuration?

    var body: some View {
        Button(action: launchSafeHello) {
            Text("Launch SafeHello")
        }
        .presentSafeHello(configuration: $configuration)
    }

    private func launchSafeHello() {
        configuration = Configuration(
            userId: "current-user-id",
            eventId: "any-valid-event-id",
            title: "Demo Meeting",
            subtitle: "08:00PM"
        )
    }
}
```

#### UIKit

For UIKit integration the `SafeHelloFlowController` component is provided, it exposes methods to display the SafeHello flow. The flow can be presented modally or adaptive, using `present(configuration:from:)` or `show(configuration:from:)` respectively.

```swift
import UIKit
import SafeHelloSDK

class ViewController: UIViewController {
    ...

    @IBAction func launchSafeHello() {
        let config = Configuration(
            userId: “current-user-id",
            eventId: “any-valid-event-id“,
            title: “Demo Meeting",
            subtitle: "08:00PM"
        )

        SafeHelloFlowController.present(configuration: config, from: self)
    }
}
```

## License

[SafeHello iOS SDK License](LICENSE)
