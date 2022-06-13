//
//  ViewExtension.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 13.06.2022.
//

import SwiftUI

extension View {
    
    func northWestShadow(radius: CGFloat = 16, offset: CGFloat = 6) -> some View {
        self
            .shadow(color: .highlight,
                    radius: radius,
                    x: -offset,
                    y: -offset)
            .shadow(color: .shadow,
                    radius: radius,
                    x: offset,
                    y: offset)
    }
    
    func southEastShadow(radius: CGFloat = 16, offset: CGFloat = 6) -> some View {
        self
            .shadow(color: .shadow,
                    radius: radius,
                    x: -offset,
                    y: -offset)
            .shadow(color: .highlight,
                    radius: radius,
                    x: offset,
                    y: offset)
    }
    
}
