//
//  SleepView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/22/25.
//
import SwiftUI

struct SleepView: View {
    var body: some View {
        BaseView {
            ScrollView{
                VStack(alignment: .leading, spacing: 16) {
                    
                    // Title
                    Text("My Sleep Details:")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    // Stat Cards Row
                    HStack(spacing: 16) {
                        SleepStatCard(icon: "waveform.path.ecg", title: "HRV", value: "143 ms")
                        SleepStatCard(icon: "bed.double.fill", title: "Sleep Duration", value: "6h 35m")
                        SleepStatCard(icon: "heart", title: "Resting HR", value: "37bpm")
                    }
                    .padding(.horizontal)
                    
                    // Subtitle
                    Text("Sleep Insights:")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
                .background(AppColors.PEAKbackground.ignoresSafeArea())
            }
        }
    }
}
// MARK: - Stat Card Component
struct SleepStatCard: View {
    var icon: String
    var title: String
    var value: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(.black)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text(value)
                .font(.footnote)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color(red: 206/255, green: 224/255, blue: 211/255))
        .cornerRadius(10)
    }
}
