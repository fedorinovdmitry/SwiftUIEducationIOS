//
//  SwiftUIEducationIOSApp.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 12.06.2022.
//

import SwiftUI

@main
struct SwiftUIEducationIOSApp: App {
    
    @AppStorage("appearance")
    var appearance: Appearance = .automatic
    
    let userManager = UserManager()
    
    init() {
        userManager.load()
    }
    
    var body: some Scene {
        WindowGroup {
            //            ContentView(guess: RGB())
            //            SwiftCalcView()
            //            WelcomeView()
            //            RegisterView()
            //                .environmentObject(userManager)
            StarterView()
                .environmentObject(userManager)
                .environmentObject(ChallengesViewModel())
                .preferredColorScheme(appearance.getColorScheme())
        }
    }
}

struct SwiftUIEducationIOSApp_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

