# SafeHello iOS SDK

The safest, fastest Way To Connect. SafeHello helps you find the person you're looking for quickly and more confidently.

## Features

- **Unique SafeSignal**: You and the person you’re meeting will be assigned a matching, easy-to-spot signal with a unique color combination.

- **One-time SafeCode**: For extra security, view a unique, one-time numerical code generated only for this interaction that appears on both devices.

- **Dynamic SafeSketch**: Go a step further with a sketch: both participants draw, and the resulting image appears on both devices in real-time.

## Installation

The iOS SDK is distributed as binary frameworks and is compatible with iOS 14 and above. Currently, the following distribution methods are supported:

### Swift Package Manager

1. In Xcode, select from the menu `File > Add Packages…` and enter https://github.com/HopCommunity/safehello-ios-binary-sdk.git as the package URL.  
  
2. Select the latest version from our release page. 

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

1. Download the binary framework (SafeHelloSDK.zip) from the release attachments

2. Unzip the SafeHelloSDK.zip

3. Drag the SafeHelloSDK.xcframework into your `App Target > General Tab > Frameworks, Libraries and Embeded Content`, and double-check that the framework  is embedded.

## License
