//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ekta Mulkalwar on 01/07/24.
//

import SwiftUI

@main

struct LandmarksApp: App {

    @StateObject private var modelData = ModelData()

    

    var body: some Scene {

        WindowGroup {

            ContentView()

                .environmentObject(modelData)

        }

    }

}

 
