//
//  SelectMechanicController.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation
import UIKit

class SelectMechanicController: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var jamesButton: UIButton!
    @IBOutlet weak var johnButton: UIButton!
    @IBOutlet weak var jackButton: UIButton!
    
    var price: Float = 0
    
    var currentSelectedButton : UIButton?
    
    let james = Mechanic(name: "James", price: 100)
    let john = Mechanic(name: "John", price: 200)
    let jack = Mechanic(name: "Jack", price: 300)
    
    var selectedMechanic : Mechanic?
    
    func validateMechanic(){
        if selectedMechanic != nil{
            if self.price >= selectedMechanic?.price{
                let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
                delegate.moveToFinalizeOrder(selectedMechanic!)
            }
            else{
                let alert = UIAlertView(title: "", message: "\(selectedMechanic!.name) needs at least \(selectedMechanic!.price). Please increase budget or select another mechanic", delegate: self, cancelButtonTitle: "Ok", otherButtonTitles: "Increase")
                alert.show()
            }
        }
        else{
            let alert = UIAlertView(title: "", message: "Please select a mechanic", delegate: nil, cancelButtonTitle: "Ok")
            alert.show()
        }
        
    }
    
    @IBAction func nextButtonPressd(sender: UIButton) {
        validateMechanic()
    }
    
    @IBAction func prevButtonPressd(sender: UIButton) {
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.moveToAddPrice()
    }
    
    @IBAction func jamesButtonPressd(sender: UIButton) {
        if currentSelectedButton != nil{
            currentSelectedButton!.selected = !currentSelectedButton!.selected
        }
        currentSelectedButton = jamesButton
        currentSelectedButton?.selected = true
        selectedMechanic = james
    }
    
    @IBAction func johnButtonPressd(sender: UIButton) {
        if currentSelectedButton != nil{
            currentSelectedButton!.selected = !currentSelectedButton!.selected
        }
        currentSelectedButton = johnButton
        currentSelectedButton?.selected = true
        selectedMechanic = john
    }
    
    @IBAction func jackButtonPressd(sender: UIButton) {
        if currentSelectedButton != nil{
            currentSelectedButton!.selected = !currentSelectedButton!.selected
        }
        currentSelectedButton = jackButton
        currentSelectedButton?.selected = true
        selectedMechanic = jack
    }
    
    func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int) {
        print("ButtonIndex \(buttonIndex)")
        if buttonIndex == 1{
            self.price = selectedMechanic!.price
        }
    }
    
}
