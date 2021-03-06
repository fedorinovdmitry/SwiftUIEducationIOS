//
//  WelcomeView.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 15.06.2022.
//

import SwiftUI

struct WelcomeView: View {
    
    @EnvironmentObject var userManager: UserManager
    
    @State var showPractice = false
    
    @ViewBuilder
    var body: some View {
        
        if showPractice {
            HomeView()
        } else {
            ZStack {
                WelcomeBackgroundImage()
                VStack {
                    Text(verbatim: "Hi, \(userManager.profile.name)")
                    WelcomeMessageView()
                    Button(action: {
                        self.showPractice = true
                    }, label: {
                        HStack {
                            Image(systemName: "play")
                            Text(verbatim: "Start")
                        }
                    })
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .previewDevice("iPhone 13")
            .environmentObject(UserManager())
    }
}


