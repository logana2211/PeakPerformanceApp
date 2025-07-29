//
//  CalendarView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/21/25.
//
import SwiftUI

struct CalendarView: View {
    @State private var currentDate = Date()
    
    var body: some View {
        CalendarTopBar {
            VStack(spacing: 16) {
                HStack (spacing:16){
                    Button(action: {
                        currentDate = Calendar.current.date(byAdding: .month, value: -1, to: currentDate)!
                    }) {
                        Image(systemName: "chevron.left")
                    }


                    // ✅ Use your custom date formatter
                    Text(currentDate, formatter: DateFormatter.monthYear)
                        .font(AppFonts.headline(size: 18))
                        .foregroundColor(AppColors.text)

                    Button(action: {
                        currentDate = Calendar.current.date(byAdding: .month, value: 1, to: currentDate)!
                    }) {
                        Image(systemName: "chevron.right")
                    }
                }
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("Calendar grid view goes here")
                    .foregroundColor(AppColors.text)
                Spacer()
            }
            .padding()
            .background(AppColors.PEAKbackground)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

// ✅ Must be placed OUTSIDE of the CalendarView struct
extension DateFormatter {
    static var monthYear: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL yyyy"
        return formatter
    }
}
