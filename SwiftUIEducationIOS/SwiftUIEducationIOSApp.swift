//
//  SwiftUIEducationIOSApp.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 12.06.2022.
//

import SwiftUI

@main
struct SwiftUIEducationIOSApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView(guess: RGB())
//            SwiftCalcView()
            WelcomeView()
        }
    }
}

struct SwiftUIEducationIOSApp_Previews: PreviewProvider {
  static var previews: some View {
    EmptyView()
  }
}

