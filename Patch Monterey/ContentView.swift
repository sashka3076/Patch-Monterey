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
        VStack {
            switch progress {
            case 0:
                WelcomeView(p: $progress)
            case 1:
                DownloadView(p: $progress)
            default:
                Text(viewErrorMessage)
            }
        }.padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

        
var viewErrorMessage: String = """
There was a view error (the progress variable being set to an illegal number). 
Please restart the app to fix. If that doesn't work, 
open an issue at https://github.com/Solomon-Wood/Patch-Monterey,
Unless (of course) one is already open.
"""
