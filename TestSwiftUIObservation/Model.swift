//
//  Model.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import Foundation

public class Model: ObservableObject {
  public init(selectedCounter: Counter? = nil) {
    self.selectedCounter = selectedCounter
  }
  
  @Published var selectedCounter: Counter?
  
  @Published public var counters =
  [
    Counter(count: 0, name: "Units Counter"),
    Counter(count: 100, name: "Hundreds Counter"),
    Counter(count: 1000, name: "Thousands Counter")
  ]
}
