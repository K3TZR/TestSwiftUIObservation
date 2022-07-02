//
//  TestSwiftUIObservationApp.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import SwiftUI

@main
struct TestSwiftUIObservationApp: App {
  var body: some Scene {
    
    let model = Model()
    
    WindowGroup {
      ContentView(model: model)
    }
  }
}
