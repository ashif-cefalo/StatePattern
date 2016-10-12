//
//  ReadyState.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class ReadyState: State {
  var price: Float

  init(price: Float) {
    self.price = price
  }

  func getAssignedMechanic(context: Context) -> Mechanic? {
    print("a ready quote doesn't have a mechanic assigned yet")
    return nil
  }

  func getMessageToCustomer(context: Context) -> String {
    return String.localizedStringWithFormat("Your quote is ready. The total for the services " +
      "you have requested is: $%.2f", self.price)
  }

  func getPrice(context: Context) -> Float? {
    return price
  }

  func getReceipt(context: Context) -> Receipt? {
    print("a ready quote doesn't have a receipt")
    return nil
  }
}
