//
//  AppColors.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/21/25.
//


import SwiftUI

extension Color {
    init(hex: String) {
        var hexFormatted = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hexFormatted).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

struct AppColors {
    static let background = Color(hex: "#0F1D1E")
    static let primaryGreen = Color(hex: "#00FF73")
    static let buttonFill = Color(hex: "#2F3F35")
    static let buttonfill2 = Color(hex: "FFFFFF")
    static let text = Color.white
}

struct AppFonts {
    static func headline(size: CGFloat) -> Font {
        Font.custom("SFProRounded-Bold", size: size)
    }

    static func body(size: CGFloat) -> Font {
        Font.custom("SFProRounded-Regular", size: size)
    }
}
