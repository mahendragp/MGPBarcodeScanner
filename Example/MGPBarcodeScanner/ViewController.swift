//
//  ViewController.swift
//  MGPBarcodeScanner
//
//  Created by Mahendra on 05/23/2018.
//  Copyright (c) 2018 Mahendra. All rights reserved.
//

import UIKit
import MGPBarcodeScanner

class ViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btn.layer.cornerRadius = 7
        btn.layer.borderWidth = 1
        btn.layer.borderColor = btn.titleColor(for: .normal)!.cgColor
    }
    
    @IBAction func btnOpenTapped() {
        
        let vc = MGPScannerViewController.viewControllerFrom(storyboard: "Main", withIdentifier: "MGPScannerViewController")!
        vc.delegate = self
        vc.closeBarButtonDirection = .right
        vc.overlayColor = UIColor.yellow
        //        vc.closeBarButton = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(close))
        
        let nav = UINavigationController(rootViewController: vc)
        nav.navigationBar.tintColor = UIColor.white
        nav.navigationBar.barTintColor = UIColor.brown
        present(nav, animated: true, completion: nil)
        
    }
    
    @objc func close() {
        navigationController?.popViewController(animated: true)
        //        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

//-----------------------------------------------------

//MARK:- MGPScannerViewControllerDelegate

//-----------------------------------------------------

extension ViewController: MGPScannerViewControllerDelegate {
    
    func barcodeDidScannedWith(text: String, OfType type: ScannedItem, error: ScanningError?) {
        
        if let error = error {
            showAlert(msg: error.msg)
            return
        }
        
        switch type {
        case .email:
            showAlert(msg: "Email : \(text)")
        case .link:
            showAlert(msg: "Link: \(text)")
        case .number:
            showAlert(msg: "Number: \(text)")
        case .text:
            showAlert(msg: "Text: \(text)")
        case .other:
            showAlert(msg: "Other: \(text)")
        }
        
    }
    
    //-----------------------------------------------------
    
    func barcodeDidScannedWith(error: ScanningError) {
        
        if error.code == .barCodeNotScanned {
            showAlert(msg: error.msg)
        } else if error.code == .cameraNotFound {
            showAlert(msg: error.msg)
        }
    }
    
    //-----------------------------------------------------
    
    func cameraPermission(error: ScanningError) {
        
        if error.code == .cameraPermissionNotGranted {
            showAlert(msg: "Please enable camera access from settings.")
        } else if error.code == .cameraPermissionRestricted {
            showAlert(msg: "Your device camera access is restricted.")
        } else if error.code == .camerePermissionNotDetermined {
            showAlert(msg: "Your device camera access can't be determined.")
        }
    }
    
    //-----------------------------------------------------
}


//-----------------------------------------------------

//MARK: - Alert Methods

//-----------------------------------------------------

extension ViewController {
    
    func showAlert(title: String?, msg: String?, actions: [UIAlertAction]?) {
        
        guard let arrayActions = actions else {
            debugPrint("There should be atleast one alert action.")
            return
        }
        
        let alertTitle = title ?? "Scanner Demo"
        let alertMsg = msg ?? ""
        
        let alertVC = UIAlertController(title: alertTitle, message: alertMsg, preferredStyle: .alert)
        
        for action in arrayActions {
            alertVC.addAction(action)
        }
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    //-----------------------------------------------------
    
    func showAlert(msg: String) {
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        self.showAlert(title: nil, msg: msg, actions: [okAction])
    }
    
    //-----------------------------------------------------
    
    func showAlert(msg: String, actions: [UIAlertAction]?) {
        self.showAlert(title: nil, msg: msg, actions: actions)
    }
    
    //-----------------------------------------------------
    
}



