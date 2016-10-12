//
//  FinalizeOrderController.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation
import UIKit

class FinalizeOrderController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!

    var mechanic : Mechanic?
    var price: Float = 0
    
    override func viewDidLoad() {
        descriptionLabel.text = "Thank you for your  patience, \(mechanic!.name) is assigned to you at $\(mechanic!.price). Press finish to complete your request or previous to change anything."
    }
    
    @IBAction func nextButtonPressd(sender: UIButton) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.moveToInitialFromFinal(mechanic!)
    }
    
    @IBAction func prevButtonPressd(sender: UIButton) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.moveToSelectMechanic(price)
    }
}
