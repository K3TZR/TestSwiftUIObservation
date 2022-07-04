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
    Slice(frequency: 10, name: "Slice 0"),
    Slice(frequency: 100, name: "Slice 1"),
    Slice(frequency: 1000, name: "Slice 2")
  ]
}
