//
//  ContentView.swift
//  TestSwiftUIObservation
//
//  Created by Douglas Adams on 7/2/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var model: Model

  @State var currentActiveSlice: Slice? = nil
  
  var body: some View {
    
    let _ = Self._printChanges()
    
    VStack {
      if model.activeSlice == nil {
        Text("No Slice selected")
      } else {
        Text(model.activeSlice!.name)
        CountView(activeSlice: model.activeSlice!)
      }
      
      Spacer()
      Button("change slice") {
        var newActiveSlice: Slice?
        // new activeSlice is 0, 1, 2 or nil
        let index = Int.random(in: 0..<4)
        if index == 3 {
            newActiveSlice = nil
        } else {
          newActiveSlice = model.slices[index]
        }
        // only change the property if the new (random selection) is different from current
        if currentActiveSlice != newActiveSlice {
          model.activeSlice = newActiveSlice
          currentActiveSlice = newActiveSlice
          print("-----> new activeSlice = \(model.activeSlice?.name ?? "none")")
        }
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
    
    HStack {
      Text("Frequency")
      Text("\(activeSlice.frequency)")
    }
    Button("incr") {
      activeSlice.frequency += 1
      print("Slice = \(activeSlice.frequency)")
    }
  }
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(model: Model())
  }
}
