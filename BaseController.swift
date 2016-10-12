//
//  BaseController.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation
import UIKit

class BaseController{
    
    var context = Context()
    
    func showInitialController(mechanic: Mechanic?){
        if mechanic != nil{
            let receipt = Receipt(delivered: true, total: mechanic!.price, customerName: "John Lee")
            context.changeStateToCompleted(mechanic!.price, mechanic: mechanic!, receipt: receipt)
        }
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("Initial") as! InitiateOrderController
        print(context.getMessageToCustomer())
        setRootView(viewController)
    }
    
    func showAddPriceController(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("Price") as! AddPriceController
        context.changeStateToPending()
        setRootView(viewController)
    }
    
    func showSelectMechanicController(price: Float){
        context.changeStateToReady(price)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("Mechanic") as! SelectMechanicController
        viewController.price = price
        setRootView(viewController)
    }
    
    func showFinalizeOrderController(mechanic: Mechanic){
        context.changeStateToBooked(mechanic.price, mechanic: mechanic)
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("Finalize") as! FinalizeOrderController
        viewController.mechanic = mechanic
        setRootView(viewController)
    }
    
    func updatePrice(price: Float){
        
    }
    
    func updateMechanic(mechanic: Mechanic){
        
    }
    
    func updateReceipt(receipt: Receipt){
        
    }
    
    private func setRootView(viewController : UIViewController){
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.window?.rootViewController = viewController
    }
}
