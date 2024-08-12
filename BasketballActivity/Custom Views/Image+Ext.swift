//
//  File.swift
//  BasketballActivity
//
//  Created by Mohammad Blur on 8/12/24.
//


import SwiftUI

extension Image {

    func teamLogoModifier(frame: CGFloat? = nil) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: frame, height: frame)
    }
}
