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

You need to set `MGPScannerViewController` as custom class to a view controller and Storyboard Id to `MGPScannerViewController`. That's it!!

```
    //import 
    import MGPBarcodeScanner
    
    //code to open scanner
    let vc = MGPScannerViewController.viewControllerFrom(storyboard: "Main", withIdentifier: "MGPScannerViewController")!
    vc.delegate = self 
    vc.closeBarButtonDirection = .right // to dismiss/pop view controller
    vc.overlayColor = UIColor.yellow // color if lines over camera

    vc.closeBarButton = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(close)) // cutomise bar button item

    let nav = UINavigationController(rootViewController: vc)
    nav.navigationBar.tintColor = UIColor.white
    nav.navigationBar.barTintColor = UIColor.brown
    present(nav, animated: true, completion: nil)
    
    //to dismiss the scanner
    @objc func close() {
        vc.dismiss(animated: true, completion: nil)
    }
    
    //Implement MGPScannerViewControllerDelegate Methods to get scan result
    extension ViewController: MGPScannerViewControllerDelegate {
    
       //Use following delegate method to get text/error after qr code scan.
       func barcodeDidScannedWith(text: String, OfType: ScannedItem, error: ScanningError?) {
          print("scanned text: %@", text)
          
       }
    
       //check camera permission error with following method
       func cameraPermission(error: ScanningError) {
          print(error)
       }
}

```

Note: For Camera permission you need to add 'Privacy - Camera Usage Description' in Info.plist

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
