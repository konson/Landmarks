//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Alecs Konson on 1/25/24.
//

import SwiftUI

@main // entry into app

struct LandmarksApp: App { // conforms to App protocol
    var body: some Scene { // returns one or more scenes for display
        
//      WindowGroup: used for defining the root structure of an app and managing
//      the hierarchy of windows in a multi-window environment, such as on iPadOS
//      and macOS.
        WindowGroup { // Think of it as the top-level container that holds the main UI components of your app.
            ContentView()
        }
    }
}
