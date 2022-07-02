//
//  Counter.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import Foundation

public class Counter: ObservableObject {
  @Published var count: Int
  @Published var name: String
  
  public init(count: Int, name: String) {
    self.count = count
    self.name = name
  }
}
