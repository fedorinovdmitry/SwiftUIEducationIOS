//
//  ColorCircle.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 13.06.2022.
//

import SwiftUI

struct ColorCircle: View {
    var rgb: RGB
    let size: CGFloat
    
    var body: some View {
        ZStack {
          Circle()
            .fill(Color.element)
            .northWestShadow()
          Circle()
            .fill(Color(red: rgb.red, green: rgb.green, blue: rgb.blue))
            .padding(20)
        }
        .frame(width: size, height: size)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
          Color.element
          ColorCircle(rgb: RGB(), size: 200)
        }
        .frame(width: 300, height: 300)
        .previewLayout(.sizeThatFits)
    }
}
