//
//  landmarksApp.swift
//  landmarks
//
//  Created by Abhishek on 26/07/24.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
