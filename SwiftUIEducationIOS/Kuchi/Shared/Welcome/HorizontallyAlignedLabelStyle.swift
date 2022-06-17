//
//  HorizontallyAlignedLabelStyle.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 17.06.2022.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
          }
    }
}
