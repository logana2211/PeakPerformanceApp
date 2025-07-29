//
//  FavoritesView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/22/25.
//
import SwiftUI

struct FavoritesView: View {
    var body: some View {
        BaseView {
            
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        
                        // Title
                        Text("My Favorites:")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                    }
                    ScrollView{ 
                    HStack {
                        
                        // Stat Cards Row
                        HStack(spacing: 5) {
                            WorkoutStatCard(imageName: "barbell_back_squat", title: "Barbell Back Squat", detail: "3 sets x 6 reps", value: "315 lbs")
                        }
                        .padding(EdgeInsets(top: 4, leading: 1, bottom: 4, trailing: 1))
                        
                    }
                    
                    .padding(.vertical,4)
                    .padding(.horizontal,12)
                    .background(AppColors.PEAKbackground.ignoresSafeArea())
                }
            }
        }
    }
    // MARK: - Stat Card Component
    
    struct WorkoutStatCard: View {
        var imageName: String
        var title: String
        var detail: String
        var value: String
        
        var body: some View {
            HStack(spacing: 8) {
                // Left Image
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipped()
                    .cornerRadius(10)
                
                // Main Text Block
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text(detail)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                // Right-Aligned Stat
                Text("• \(value)")
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
            .padding(.vertical, 8)
            .padding(.horizontal,8)
            .background(Color(.systemGray5))
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
        }
    }
}
