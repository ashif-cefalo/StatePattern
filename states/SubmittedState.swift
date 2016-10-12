//
//  SubmittedState.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class SubmittedState: State {

  func getAssignedMechanic(context: Context) -> Mechanic? {
    print("a submitted quote doesn't have a mechanic assigned yet")
    return nil
  }

  func getMessageToCustomer(context: Context) -> String {
    return "Your quote has been submitted and is " +
    "being processed right now, please wait a few moments"
  }

  func getPrice(context: Context) -> Float? {
    print("a submitted quote doesn't have a receipt")
    return nil
  }

  func getReceipt(context: Context) -> Receipt? {
    print("a submitted quote doesn't have a receipt")
    return nil
  }
}
