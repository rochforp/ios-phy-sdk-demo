//
//  ViewController.swift
//  MyBkonBrowser
//
//  Created by Robert Rochford on 7/10/17.
//  Copyright © 2017 Robert Rochford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PHYEddystoneManagerDelegate {
    
    let appID = "yourAppID"
    let awesomeBkonBlue = UIColor(colorLiteralRed: 37.0/255.0, green: 137.0/255.0, blue: 191.0/255.0, alpha: 1.0)
    let navBarColor = UIColor.white
    let myBeaconBorderColor = UIColor.lightGray
    var bkonManager: PHYEddystoneManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bkonManager = PHYEddystoneManager(apiKey: appID)
        bkonManager.delegate = self
        bkonManager.setDelayedReport(false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scanForPWBeacons(_ sender: Any) {
        bkonManager.setBarColor(navBarColor, titleColor: awesomeBkonBlue)
        bkonManager.setCellBarColor(myBeaconBorderColor)
        bkonManager.startScanningForBeacons(inModalView: self)
    }

}

