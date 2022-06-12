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
        let extractedExpr: WindowGroup<ContentView> = WindowGroup {
            ContentView(guess: RGB())
        }
        extractedExpr
    }
}
