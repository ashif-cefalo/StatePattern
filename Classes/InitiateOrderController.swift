//
//  InitiateOrderController.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation
import UIKit

class InitiateOrderController: UIViewController {

    @IBAction func nextButtonPressd(sender: UIButton) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.moveToAddPrice()
    }
}
