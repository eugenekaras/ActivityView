//
//  ContentView.swift
//  ActivityView
//
//  Created by Евгений Карась on 13.12.22.
//

import SwiftUI

class ActivityViewCustomActivity: UIActivity{
    
}

struct ContentView: View {
    @State private var isSharePresented = false
    
    var body: some View {
        Button("Share") {
            self.isSharePresented = true
        }.sheet(isPresented: $isSharePresented) {
            ActivityView(activityItems: ["message test"])
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
