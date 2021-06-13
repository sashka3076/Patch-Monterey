//
//  ModernButton.swift
//  Patch Monterey
//
//  Created by Solomon Wood on 08/06/2021.
//

import SwiftUI

struct ModernButton: View {
    @State var text: String
    @State var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(Color.white)
                .padding()
                .background(Capsule().fill(Color("MainColor")))
                
        }
        .buttonStyle(BorderlessButtonStyle())
        .padding()
    }
}

struct ModernButton_Previews: PreviewProvider {
    static var previews: some View {
        ModernButton(text: "Click Me", action: {})
    }
}
