//
//  TopToolbar.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/24/25.
//
import SwiftUI

struct TopToolbar: View {
    var body: some View {
        
        HStack {
            // Options Icon (Left)
            NavigationLink(destination: OptionsView()) {
                Image(systemName: "line.3.horizontal")
                    .font(.title2)
                    .foregroundColor(.green)
            }

            Spacer()

            // Center Logo
            Image("PeakText")
                .resizable()
                .frame(height: 40)
                .frame(width:120)

            Spacer()

            // Calendar Icon (Right)
            NavigationLink(destination: CalendarView()) {
                Image(systemName: "calendar")
                    .font(.title2)
                    .foregroundColor(.green)
            }
        }
        .padding(.horizontal)
        .padding(.top, 5)
        .padding(.bottom, 6)
        .background(AppColors.PEAKbackground)
    }
}
