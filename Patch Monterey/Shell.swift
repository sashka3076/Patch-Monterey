//
//  Shell.swift
//  Patch Monterey
//
//  Created by Solomon Wood on 09/06/2021.
//

import Foundation


@discardableResult func Shell(_ args: String) -> Int32 {
    let task = Process()
    task.launchPath = "/bin/bash"
    task.arguments = ["-c", args]
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}
