//
//  Item.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/21/25.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        BaseView {
            ScrollView {
                // ✅ Recovery Score Dial Replacement
                RecoveryDialView(score: 76)
                    .padding(.vertical,12)
                
                // Welcome + Workout Button
                VStack(spacing:24) {
                    StartWorkoutButton()
                    
                }
                .padding(.top,16)
                .background(AppColors.PEAKbackground.ignoresSafeArea())
                
                // HRV + Calories Grid
                HStack(spacing: 2) {
                    CaloriesButton()
                    HRVbutton()
                }
                .padding(.horizontal,0)
                
                // My Program
                VStack(alignment: .leading, spacing: 12) {
                    Text("My Program:")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.horizontal,8)
                    
                    VStack(spacing: 12) {
                        
                        ProgramOptionsView()
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                    .padding(.horizontal,8)
                }
                VStack(alignment: .leading, spacing: 12) {
                    Text("My Sleep:")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.horizontal,0)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal,8)
                    
                Spacer()
            }
            .padding()
            .background(AppColors.PEAKbackground)
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
}
