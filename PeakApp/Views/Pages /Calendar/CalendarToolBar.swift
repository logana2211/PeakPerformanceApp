//
//  CalendarToolBar.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/24/25.
//
import SwiftUI

struct CalendarToolbar: View {
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        HStack {
            // Custom Back Button Icon (Left)
            Button(action: {
                dismiss()
            }) {
                Image(systemName: "chevron.left")
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
        }
        .padding(.horizontal)
        .padding(.top, 5)
        .padding(.bottom, 6)
        .background(AppColors.PEAKbackground)
    }
}
