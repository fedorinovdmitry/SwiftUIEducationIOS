//
//  LogoImage.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 20.06.2022.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(width: 30, height: 30)
            .cornerRadius(100 / 2)
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .background(Color(white: 0.9))
            .clipShape(Circle())
            .foregroundColor(.red)
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
            .previewLayout(.sizeThatFits)
    }
}
