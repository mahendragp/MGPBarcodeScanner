# MGPBarcodeScanner

[![CI Status](https://img.shields.io/travis/Mahendra/MGPBarcodeScanner.svg?style=flat)](https://travis-ci.org/Mahendra/MGPBarcodeScanner)
[![Version](https://img.shields.io/cocoapods/v/MGPBarcodeScanner.svg?style=flat)](https://cocoapods.org/pods/MGPBarcodeScanner)
[![License](https://img.shields.io/cocoapods/l/MGPBarcodeScanner.svg?style=flat)](https://cocoapods.org/pods/MGPBarcodeScanner)
[![Platform](https://img.shields.io/cocoapods/p/MGPBarcodeScanner.svg?style=flat)](https://cocoapods.org/pods/MGPBarcodeScanner)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- Min. iOS 10.0 or later 
- Swift 4.0 or later

## Usage

You need to set a custom class to a view controller to `MGPScannerViewController`. That's it!!
```
    let vc = MGPScannerViewController.viewControllerFrom(storyboard: "Main", withIdentifier: "MGPScannerViewController")!
    vc.delegate = self 
    vc.closeBarButtonDirection = .right // to dismiss/pop view controller
    vc.overlayColor = UIColor.yellow // color if lines over camera

    vc.closeBarButton = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(close)) // cutomise bar button item

    let nav = UINavigationController(rootViewController: vc)
    nav.navigationBar.tintColor = UIColor.whit
    nav.navigationBar.barTintColor = UIColor.brown
    present(nav, animated: true, completion: nil)
```

## Installation

MGPBarcodeScanner is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MGPBarcodeScanner'
```

## Author

MahendraGP

## License

MGPBarcodeScanner is available under the MIT license. See the LICENSE file for more info.
