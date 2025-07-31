//
//  ProgramOptions.swift
//  PeakApp
//
//  Created by Logan Alexander on 7/30/25.
//
import SwiftUI

struct ProgramOptionsView: View {
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
