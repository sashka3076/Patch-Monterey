//
//  ContentView.swift
//  Patch Monterey
//
//  Created by Solomon Wood on 08/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State var progress: Int = 0
    var body: some View {
        Text("Hello, World!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
