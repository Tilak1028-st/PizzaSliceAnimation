//
//  ContentView.swift
//  PizzaSliceAnimation
//
//  Created by Tilak Shakya on 30/07/24.
//

import SwiftUI

struct PizzaSlice: Identifiable {
    let id: Int
    let imageName: String
}

import SwiftUI

struct ContentView: View {
    @State private var displayedText = ""
    private let fullText = "The Pizza"
    @State private var charIndex = 0
    
    var body: some View {
        VStack(spacing: 20) {
            PizzaView()
            Text(displayedText)
                .padding(.top, 45)
                .font(.system(size: 25, weight: .semibold))
            
            Spacer()
        }
        .padding(.top, 100)
        .onAppear(perform: animateText)
    }
    
    private func animateText() {
        Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true) { timer in
            if charIndex < fullText.count {
                let index = fullText.index(fullText.startIndex, offsetBy: charIndex)
                displayedText += String(fullText[index])
                charIndex += 1
            } else {
                timer.invalidate()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
