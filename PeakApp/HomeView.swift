//
//  Item.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/21/25.
//

import SwiftUI
struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                // Logo
                Image("PeakText")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.top, 10)

                // ✅ Recovery Score Dial Replacement
                RecoveryDialView(score: 76)

                // Welcome + Workout Button
                VStack {
                    Text("Hello, Logan")
                        .font(.title2)
                        .foregroundColor(.white)

                    Button(action: {
                        // Start Workout action
                    }) {
                        Text("START WORKOUT")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(AppColors.primaryGreen)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }

                // HRV + Calories Grid
                HStack(spacing: 16) {
                    StatCard(title: "HRV", value: "143")
                    StatCard(title: "Calories", value: "1,056")
                }
                .padding(.horizontal)

                // My Program
                VStack(alignment: .leading) {
                    Text("My Program")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.leading)
                    HStack {
                        Image(systemName: "dumbbell")
                        Text("FOUNDER’S")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                    .padding(.horizontal)
                }

                Spacer()
            }
            .background(AppColors.background)
            .navigationBarTitle("Home", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: CalendarView()) {
                        Image(systemName: "calendar")
                            .foregroundColor(.green)
                    }
                }
            }
        }
        .accentColor(.green)
    }
}

struct StatCard: View {
    var title: String
    var value: String

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            Text(value)
                .font(.title2)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 80)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}
