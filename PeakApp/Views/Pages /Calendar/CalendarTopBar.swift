//
//  CalendarTopBar.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/24/25.
//
import SwiftUI

struct CalendarTopBar<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {

            VStack(spacing: 0) {
                CalendarToolbar()
                content
            }
            .background(AppColors.PEAKbackground.ignoresSafeArea())
            .navigationBarBackButtonHidden(true)
        }
    }

