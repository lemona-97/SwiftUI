//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by wooseob on 10/23/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
