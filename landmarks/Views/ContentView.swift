//
//  ContentView.swift
//  landmarks
//
//  Created by Abhishek on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
