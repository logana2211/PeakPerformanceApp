//
//  CaloriesView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/25/25.
//
import SwiftUI

struct CaloriesView: View {
    var body: some View {
        BaseView {
            ScrollView{
                VStack(alignment: .leading, spacing: 16) {
                    
                    // Title
                    Text("My Calories:")
                        .font(.title2)
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

