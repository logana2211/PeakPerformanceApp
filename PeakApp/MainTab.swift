//
//  MainTabView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/22/25.
//
import SwiftUI

struct MainTab: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Color.greenButtonFill
                    Text("Home")
                }
            
            SleepView()
                .tabItem {
                    Image(systemName: "bed.double.fill")
                    Color.greenButtonFill
                    Text("Sleep")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Color.greenButtonFill
                    Text("Favorites")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Color.greenButtonFill
                    Text("Profile")
                }
        }
        .accentColor(.greenButtonFill) // Optional: White icon highlight
        .background(Color.darkGreenButtonFill.edgesIgnoringSafeArea(.all))
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(named: "darkGreenButtonFill")
            
            UITabBar.appearance().unselectedItemTintColor = UIColor(named: "greenButtonFill")?.withAlphaComponent(0.4)
            UITabBar.appearance().tintColor = UIColor(named: "greenButtonFill")
            
            UITabBar.appearance().standardAppearance = appearance
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }}
