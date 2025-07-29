//
//  CaloriesButton.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/25/25.
//
import SwiftUI

struct CaloriesButton: View {
    var body: some View {
        
                VStack(alignment: .leading, spacing: 12) {
                    Text("Calories:")
                        .font(.headline)
                        .foregroundColor(.white)

                    NavigationLink(destination: CaloriesView()) {
                        Text("2,227")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2)) // Adjust this to match your green card color
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 2)
                .padding(.horizontal,8)
            }
        }
