//
//  ContentView.swift
//  Basics
//
//  Created by Prateek Raj on 12/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    var basics = RxBasics()
//    basics.showObservables()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
