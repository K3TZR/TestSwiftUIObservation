//
//  Slice.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import Foundation

public class Slice: Equatable, ObservableObject {
  public static func == (lhs: Slice, rhs: Slice) -> Bool {
    lhs.name == rhs.name
  }
  
  @Published var frequency: Int
  @Published var name: String
  
  public init(frequency: Int, name: String) {
    self.frequency = frequency
    self.name = name
  }
}
