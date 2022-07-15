//
//  BackgroundView.swift
//  Weather
//
//  Created by Zlatko Iliev on 13.07.22.
//

import SwiftUI

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}
