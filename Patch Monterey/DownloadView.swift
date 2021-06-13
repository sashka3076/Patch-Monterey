//
//  DownloadView.swift
//  Patch Monterey
//
//  Created by Solomon Wood on 09/06/2021.
//

import SwiftUI

struct DownloadView: View {
    @Binding var p: Int
    @State var status: String = "Downloading Kexts"
    var body: some View {
        VStack {
            Text("Download Files")
                .bold()
                .padding()
            Text(downloadView1MainText)
                .multilineTextAlignment(.center)
            StatusLabel(text: status)
                .onAppear {
                    if status == "Downloading Kexts" {
                        Shell("rm -rf ~/.monterey")
                        Shell("mkdir ~/.monterey")
                        var sstatus = Shell("cd ~/.monterey && git clone https://github.com/BenSova/Mini-Monterey-Patcher.git")
                        if sstatus != 0 {
                            status = "Error downloading"
                        } else {
                            status = "Complete"
                        }
                    } else if status == "Error downloading" {
                        
                    } else {
                        
                    }
                }
        }
    }
}

struct DownloadViewPVM: View {
    @State var progress: Int = 0
    var body: some View {
        DownloadView(p: $progress)
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadViewPVM()
    }
}



var downloadView1MainText: String = """
To begin with we need to download the macOS Kexts, and also a
suitable version of macOS Monterey. We'll begin by downloading the
kexts.
"""
