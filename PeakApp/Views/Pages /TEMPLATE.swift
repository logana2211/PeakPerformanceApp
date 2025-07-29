//
//  TEMPLATE.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/24/25.
//
import SwiftUI

struct TEMPLATE: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                // Background Scrollable Content
                ScrollView {
                    VStack(spacing: 20) {
                        Spacer().frame(height: 70) // Space under toolbar

                        RecoveryDialView(score: 76)
                            .padding()

                        Text("Hello, Logan!")
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)

                        // Other content...
                    }
                    .padding(.bottom, 20)
                }

                // Sticky Toolbar
                TopToolbar()
            }
            .background(AppColors.PEAKbackground)
            .ignoresSafeArea(edges: .top)
        }
    }
}
