//
//  ContentView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/21/25.
//
import SwiftUI

@main
struct PeakApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView() // 👈 This replaces HomeView()
        }
    }
}
