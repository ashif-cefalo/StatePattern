//
//  CompletedState.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class CompletedState: State {

  var price: Float
  var mechanic: Mechanic
  var receipt: Receipt

  init(price: Float, mechanic: Mechanic, receipt: Receipt) {
    self.price = price
    self.mechanic = mechanic
    self.receipt = receipt
  }

  func getAssignedMechanic(context: Context) -> Mechanic? {
    return mechanic
  }

  func getMessageToCustomer(context: Context) -> String {
    return "Thank you for using YourMechanic."
  }

  func getPrice(context: Context) -> Float? {
    return price
  }

  func getReceipt(context: Context) -> Receipt? {
    return receipt
  }
}
