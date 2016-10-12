//
//  AddPriceController.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation
import UIKit

class AddPriceController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    
    @IBAction func nextButtonPressd(sender: UIButton) {
        
        if priceField.text!.isEmpty{
            let alert = UIAlertView(title: "Error", message: "Please add a valid price", delegate: nil, cancelButtonTitle: "Ok")
            alert.show()
            return
        }
        
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.moveToSelectMechanic(Float(priceField.text!)!)
    }
    
    @IBAction func prevButtonPressd(sender: UIButton) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.showInitialController()
    }
}
