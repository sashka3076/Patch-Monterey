//
//  StatusLabel.swift
//  Patch Monterey
//
//  Created by Solomon Wood on 13/06/2021.
//

import SwiftUI

struct StatusLabel: View {
    @State var text: String
    var body: some View {
        VStack {
            Text(text)
                .foregroundColor(Color.white)
                .padding()
                .background(Capsule().fill(Color("MainColor")))
        }.padding()
    }
}

struct StatusLabel_Previews: PreviewProvider {
    static var previews: some View {
        StatusLabel(text: "Read Me")
    }
}
