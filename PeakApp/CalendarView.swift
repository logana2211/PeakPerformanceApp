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
        VStack(spacing: 16) {
            HStack {
                Button(action: {
                    currentDate = Calendar.current.date(byAdding: .month, value: -1, to: currentDate)!
                }) {
                    Image(systemName: "chevron.left")
                }

                Spacer()

                Text(currentDate, formatter: DateFormatter.monthYear)
                    .font(AppFonts.headline(size: 22))
                    .foregroundColor(AppColors.text)

                Spacer()

                Button(action: {
                    currentDate = Calendar.current.date(byAdding: .month, value: 1, to: currentDate)!
                }) {
                    Image(systemName: "chevron.right")
                }
            }

            Spacer()
            Text("Calendar grid view goes here")
                .foregroundColor(AppColors.text)
            Spacer()
        }
        .padding()
        .background(AppColors.background)
    }
}

extension DateFormatter {
    static var monthYear: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL yyyy"
        return formatter
    }
}
