//
//  WelcomeView.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 15.06.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        ZStack {
            Image("welcome-background", bundle: nil)
                .resizable()
            //              .scaledToFit()
                .aspectRatio(1 / 1, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .saturation(0.5)
                .blur(radius: 5)
                .opacity(0.08)
            HStack {
                
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
                    Image(systemName: "table")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(100 / 2)
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                        .background(Color(white: 0.9))
                        .clipShape(Circle())
                        .foregroundColor(.red)
                }
                .labelStyle(HorizontallyAlignedLabelStyle())
            }
        }
        
        
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .previewDevice("iPhone 13")
    }
}
