//
//  ContentView.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 12.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var game = Game()
    @State var guess: RGB
    @State var showScore = false
    
    var body: some View {
        VStack {
            ColorCircle(rgb: game.target)
            if !showScore {
                Text("R: ??? G: ??? B: ???")
                    .padding()
            } else {
                Text(game.target.intString())
                    .padding()
            }
            ColorCircle(rgb: guess)
            Text(guess.intString())
                .padding()
            CollorSlider(value: $guess.red, trackColor: .red)
            CollorSlider(value: $guess.green, trackColor: .green)
            CollorSlider(value: $guess.blue, trackColor: .blue)
            Button("Hit Me!"){
                showScore = true
                game.check(guess: guess)
            }
            .alert(isPresented: $showScore) {
                Alert(
                    title: Text("Your Score"),
                    message: Text(String(game.scoreRound)),
                    dismissButton: .default(Text("OK")) {
                        game.startNewRound()
                        guess = RGB()
                    })
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(guess: RGB())
    }
}

struct CollorSlider: View {
    @Binding var value: Double
    var trackColor: Color
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .accentColor(trackColor)
            Text("255")
        }
        .padding(.horizontal)
    }
}

struct ColorCircle: View {
    var rgb: RGB
    
    var body: some View {
        Circle()
            .fill(Color(rgbStruct: rgb))
    }
}
