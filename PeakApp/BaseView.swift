//
//  BaseView.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/24/25.
//
import SwiftUI

struct BaseView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationView{
            VStack(spacing: 0) {
                TopToolbar()
                content
            }
            .background(AppColors.PEAKbackground.ignoresSafeArea())
        }
    }
}
