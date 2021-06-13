//
//  WelcomeView.swift
//  Patch Monterey
//
//  Created by Solomon Wood on 08/06/2021.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var p: Int
    var body: some View {
        VStack {
            Text("Welcome")
                .bold()
                .padding()
            Text(mainText)
                .multilineTextAlignment(.center)
            ModernButton(text: "Continue", action: {p = 1})
        }
    }
}

struct WelcomeViewPVM: View {
    @State var progress: Int = 0
    var body: some View {
        WelcomeView(p: $progress)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeViewPVM()
    }
}


var mainText: String = """
Patch Monterey is a patcher for the (currently)
new OS of macOS Monterey. While it is currently
very incomplete, I will be working on it and
constantly improving it and adding new features
to it.

Credits are to currently only Ben Sova, who is
working hard at developing a CLI Monterey patcher,
the code of which I will use in my patcher. When
he releases credits, I will list them here.
"""
