//
//  WorkoutView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/21/25.
//


import SwiftUI

struct WorkoutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Text("Today’s Workout:")
                    .font(AppFonts.headline(size: 24))
                    .foregroundColor(AppColors.text)

                ForEach(0..<7) { i in
                    WorkoutCardView(
                        title: "Exercise \(i + 1)",
                        sets: 3,
                        reps: 10,
                        weight: "\(75 + i * 10) lbs"
                    )
                }

                Button("Finish") {
                    // Save to WorkoutLogger here
                }
                .font(AppFonts.body(size: 20))
                .padding()
                .frame(maxWidth: .infinity)
                .background(AppColors.primaryGreen)
                .foregroundColor(.black)
                .cornerRadius(12)
            }
            .padding()
        }
        .background(AppColors.PEAKbackground)
    }
}

struct WorkoutCardView: View {
    let title: String
    let sets: Int
    let reps: Int
    let weight: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(AppFonts.headline(size: 20))
                .foregroundColor(AppColors.text)
            Text("\(sets) sets × \(reps) reps • \(weight)")
                .font(AppFonts.body(size: 16))
                .foregroundColor(AppColors.text)
        }
        .padding()
        .background(.gray.opacity(0.15))
        .cornerRadius(12)
    }
}
