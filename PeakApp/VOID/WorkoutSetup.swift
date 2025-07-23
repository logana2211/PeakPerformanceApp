//
//  WorkoutSetupView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/21/25.
//


import SwiftUI

struct WorkoutSetup: View {
    @State private var selectedMode = "Baseball"
    @State private var selectedGroups: [String] = []
    @State private var selectedIntensity: Int? = nil

    let muscleGroups = ["Legs", "Back", "Chest", "Arms", "Triceps", "Biceps", "Shoulders","Push", "Pull", "Core"]
    let intensities = [40, 60, 80]

    var body: some View {
        VStack(spacing: 16) {
            Text("Today's Mode: \(selectedMode)")
                .font(AppFonts.headline(size: 22))
                .foregroundColor(AppColors.text)

            Text("Select Muscle Groups:")
                .font(AppFonts.body(size: 18))
                .foregroundColor(AppColors.text)

            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3)) {
                ForEach(muscleGroups, id: \.self) { group in
                    Button(action: {
                        if selectedGroups.contains(group) {
                            selectedGroups.removeAll { $0 == group }
                        } else {
                            selectedGroups.append(group)
                        }
                    }) {
                        Text(group)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(selectedGroups.contains(group) ? AppColors.primaryGreen : .gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }

            Text("Override Recovery Score:")
                .font(AppFonts.body(size: 18))
                .foregroundColor(AppColors.text)

            HStack {
                ForEach(intensities, id: \.self) { level in
                    Button(action: {
                        selectedIntensity = level
                    }) {
                        Text("\(level)%")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(selectedIntensity == level ? AppColors.primaryGreen : .gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }

            NavigationLink(destination: WorkoutView()) {
                Text("Continue")
                    .font(AppFonts.body(size: 20))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(AppColors.buttonFill)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
        .background(AppColors.PEAKbackground)
    }
}
