//
//  receipt.swift
//  StatePattern
//
//  Created by Ashif Iqbal on 10/13/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class Receipt {
  var delivered: Bool
  var total: Float
  var customerName: String

  init(delivered: Bool, total: Float, customerName: String) {
    self.delivered = delivered
    self.total = total
    self.customerName = customerName
  }
}
