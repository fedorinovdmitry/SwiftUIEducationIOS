//
//  ScoreView.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 29.06.2022.
//

import SwiftUI

struct ScoreView: View {
    
    let numberOfQuestions: Int

    @Binding var numberOfAnswered: Int
    var _numbers = State<Color>(initialValue: .blue)
    
    var body: some View {
        HStack {
            Text("\(numberOfAnswered)/\(numberOfQuestions)")
                .font(.caption)
                .padding(4)
            
 
            Spacer()
            
        }
        
    }
}

//Button {
//    self.numberOfAnswered += 1
//    self._numbers.wrappedValue = .random
//    print("Answered: \(numberOfAnswered)")
//} label: {
//    HStack {
//        Text("\(_numberOfAnswered.wrappedValue)/\(numberOfQuestions)")
//          .font(.caption)
//          .padding(4)
//          .foregroundColor(_numbers.wrappedValue)
//        Spacer()
//    }
//}

struct ScoreView_Previews: PreviewProvider {
    
    @State static var numberOfAnswered: Int = 0
    
    static var previews: some View {
        ScoreView(numberOfQuestions: 5,
                  numberOfAnswered: $numberOfAnswered)
    }
}
