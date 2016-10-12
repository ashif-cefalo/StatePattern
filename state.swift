//
//  state.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

protocol State {
  func getPrice(context: Context) -> Float?
  func getMessageToCustomer(context: Context) -> String
  func getAssignedMechanic(context: Context) -> Mechanic?
  func getReceipt(context: Context) -> Receipt?
}
