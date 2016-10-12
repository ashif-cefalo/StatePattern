//
//  BookedState.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class BookedState: State {

  var price: Float
  var mechanic: Mechanic

  init(price: Float, mechanic: Mechanic) {
    self.price = price
    self.mechanic = mechanic
  }

  func getAssignedMechanic(context: Context) -> Mechanic? {
    return mechanic
  }

  func getMessageToCustomer(context: Context) -> String {
    return "Your appointment has been booked with \(mechanic.name)."
  }

  func getPrice(context: Context) -> Float? {
    return price
  }

  func getReceipt(context: Context) -> Receipt? {
    print("a booked quote doesn't have a receipt")
    return nil
  }
}
