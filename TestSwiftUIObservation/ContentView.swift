//
//  ContentView.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var model: Model

  var body: some View {
    
    let _ = Self._printChanges()
    
    VStack {
      if model.activeSlice == nil {
        Text("No Slice selected")
      } else {
        HStack {
          Text(model.activeSlice!.name)
          CountView(activeSlice: model.activeSlice!)
        }
      }
      
      Button("change slice") {
        let index = Int.random(in: 0..<4)
        if index == 3 {
            model.activeSlice = nil
        } else {
          model.activeSlice = model.slices[index]
        }
        print("activeSlice = \(model.activeSlice?.name ?? "none")")
      }
    }
    .frame(width: 200, height: 150)
    .padding()
  }
}

struct CountView: View {
  @ObservedObject var activeSlice: Slice

  var body: some View {
    
    let _ = Self._printChanges()
    VStack {
    Text("\(activeSlice.count)")
      Button("incr") {
        activeSlice.count += 1
        print("Slice = \(activeSlice.count)")
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
