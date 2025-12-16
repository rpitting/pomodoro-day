//
//  pomodoro_dayApp.swift
//  pomodoro-day
//  
//  Created by Reiner Pittinger on 16.12.25
//  Copyright © 2025 digital wave. All rights reserved.
    

import SwiftUI
import SwiftData

@main
struct pomodoro_dayApp: App {

    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
