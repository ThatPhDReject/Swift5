//
//  MyTravelProjectApp.swift
//  MyTravelProject
//
//  Created by Paliani Théodore on 15/09/2021.
//

import SwiftUI

@main
struct MyTravelProjectApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(modelData)
        }
    }
}

