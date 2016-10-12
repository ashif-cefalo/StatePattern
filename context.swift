//
//  context.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class Context {
  private var state: State = SubmittedState()

  func getMessageToCustomer() -> String {
    return state.getMessageToCustomer(self)
  }

  func getPrice() -> Float? {
    return state.getPrice(self)
  }

  func getReceipt() -> Receipt? {
    return state.getReceipt(self)
  }

  func changeStateToReady(price: Float) {
    state = ReadyState(price: price)
  }

  func changeStateToPending() {
    state = PendingState()
  }

  func changeStateToBooked(price: Float, mechanic: Mechanic) {
    state = BookedState(price: price, mechanic: mechanic)
  }

  func changeStateToCompleted(price: Float, mechanic: Mechanic, receipt: Receipt) {
    state = CompletedState(price: price, mechanic: mechanic, receipt: receipt)
  }

}
