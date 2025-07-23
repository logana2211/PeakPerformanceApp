//
//  Recovery Dial.swift
//  PeakApp
//
//  Created by Lance Alexander on 7/22/25.
//
import SwiftUI

struct RecoveryDialView: View {
    var score: Double // from 0 to 100

    var body: some View {
        ZStack {
            // Background Ring
            Circle()
                .stroke(Color.gray.opacity(0.2), lineWidth: 20)

            // Foreground Ring
            Circle()
                .trim(from: 0.0, to: CGFloat(score / 100))
                .stroke(
                    AngularGradient(
                        gradient: Gradient(colors: [.red, .yellow, .green]),
                        center: .center,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360)
                    ),
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
                .rotationEffect(.degrees(-90))

            // Score Label
            Text("\(Int(score))")
                .font(.system(size: 48, weight: .bold))
                .foregroundColor(.white)
        }
        .frame(width: 180, height: 180)
    }
}

