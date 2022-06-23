//
//  WelcomeMessageView.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 20.06.2022.
//

import SwiftUI

struct WelcomeMessageView: View {
    var body: some View {
        Label {
            VStack(alignment: .leading) {
                Text("**Welcome to**")
                    .font(.headline)
                //                        .bold()
                Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
                Text("I am an _awesome_ \n **SwiftUI Software Engineer**")
            }
            .foregroundColor(.red)
            //                .multilineTextAlignment(.leading)
            .lineLimit(2)
            .padding(.horizontal)
        } icon: {
            LogoImage()
        }
        .labelStyle(HorizontallyAlignedLabelStyle())
    }
}

struct WelcomeMessageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessageView()
    }
}
