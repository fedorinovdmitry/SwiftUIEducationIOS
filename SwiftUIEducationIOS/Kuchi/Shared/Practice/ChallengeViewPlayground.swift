//
//  ChallengeViewPlayground.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 27.06.2022.
//

import SwiftUI

struct ChallengeViewPlayground: View {
    var body: some View {
        VStack {
            Image("welcome-background")
                .resizable()
                .background(Color.red)
                .frame(width: 100, height: 50, alignment: .center)
                .minimumScaleFactor(0.5)
                .background(Color.yellow)
            
            HStack {
              Text("A great and warm welcome to Kuchi")
                .background(Color.red)
                Text("A great and warnssssaaaadsdsdfffsaffafsfsfffffasfffffafasssf welcome to Kuchi")
                    .lineLimit(10)
                .background(Color.red)
            }
            .background(Color.yellow)
            
            HStack {
              Text("A great and warm welcome to Kuchi")
                .background(Color.red)
                .layoutPriority(-1)
              Text("A great and warm welcome to Kuchi")
                .background(Color.red)
                .layoutPriority(1)
              Text("A great and warm welcome to Kuchi")
                .background(Color.red)
            }
            .background(Color.yellow)
            
            HStack(alignment: .firstTextBaseline){
                Text("Welcome to Kuchi").font(.caption)
                Text("Welcome to Kuchi").font(.title)
                Button(action: {}, label: { Text("OK").font(.body) })
            }
            
            VStack {
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
                Text("A great and warm welcome to Kuchi")
            }
        }
    }
}

struct ChallengeViewPlayground_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeViewPlayground()
    }
}
