//
//  ContentView.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var model: Model

  @State var index = 0
  
  var body: some View {
    
    let _ = Self._printChanges()
    
    VStack {
      if model.selectedCounter == nil {
        Text("No Counter selected")
      } else {
        HStack {
          Text(model.selectedCounter!.name)
          CountView(selectedCounter: model.selectedCounter!)
        }
      }
      
      Button("change") {
        model.selectedCounter = model.counters[Int.random(in: 0..<3)]
        print("selectedCounter = \(model.selectedCounter!.name)")
      }
    }
    .frame(width: 150)
    .padding()
  }
}

struct CountView: View {
  @ObservedObject var selectedCounter: Counter

  @State var index = 0
  
  var body: some View {
    
    let _ = Self._printChanges()
    VStack {
    Text("\(selectedCounter.count)")
      Button("incr") {
        selectedCounter.count += 1
        print("Counter = \(selectedCounter.count)")
      }
    }
      .padding()
  }
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(model: Model())
  }
}
