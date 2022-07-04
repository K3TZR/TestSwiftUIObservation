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
  
  @Published var count: Int
  @Published var name: String
  
  public init(count: Int, name: String) {
    self.count = count
    self.name = name
  }
}
