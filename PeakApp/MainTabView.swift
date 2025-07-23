//
//  MainTabView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/22/25.
//
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            SleepView()
                .tabItem {
                    Image(systemName: "bed.double.fill")
                    Text("Sleep")
                }

            NotesView()
                .tabItem {
                    Image(systemName: "book.closed.fill")
                    Text("Notes")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(.white) // Optional: White icon highlight
        .background(AppColors.background.edgesIgnoringSafeArea(.all))
    }
}
