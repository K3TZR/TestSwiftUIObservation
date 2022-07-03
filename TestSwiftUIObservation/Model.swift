//
//  Model.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import Foundation

public class Model: ObservableObject {
  public init(activeSlice: Slice? = nil) {
    self.activeSlice = activeSlice
  }
  
  @Published var activeSlice: Slice?
  
  @Published public var slices =
  [
    Slice(count: 0, name: "Units Slice"),
    Slice(count: 100, name: "Hundreds Slice"),
    Slice(count: 1000, name: "Thousands Slice")
  ]
}
