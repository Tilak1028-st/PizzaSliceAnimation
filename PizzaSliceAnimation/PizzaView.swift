//
//  PizzaView.swift
//  PizzaSliceAnimation
//
//  Created by Tilak Shakya on 30/07/24.
//

import SwiftUI

struct PizzaView: View {
    @State private var showSlices: [Bool] = Array(repeating: false, count: 8)
    @State private var viewScale: CGFloat = 1.0

    let pizzaSlices: [PizzaSlice] = [
        PizzaSlice(id: 0, imageName: "slice1"),
        PizzaSlice(id: 1, imageName: "slice2"),
        PizzaSlice(id: 2, imageName: "slice3"),
        PizzaSlice(id: 3, imageName: "slice4"),
        PizzaSlice(id: 4, imageName: "slice5"),
        PizzaSlice(id: 5, imageName: "slice6"),
        PizzaSlice(id: 6, imageName: "slice7"),
        PizzaSlice(id: 7, imageName: "slice8")
    ]

    var body: some View {
        ZStack {
            ForEach(pizzaSlices) { slice in
                Image(slice.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .opacity(showSlices[slice.id] ? 1 : 0)
                    .animation(.easeInOut(duration: 0.5), value: showSlices[slice.id])
            }
        }
        .scaleEffect(viewScale)
        .animation(.easeInOut(duration: 0.5), value: viewScale)
        .onAppear {
            for index in pizzaSlices.indices {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.5) {
                    showSlices[index] = true
                }
            }
            
            let totalAnimationTime = Double(pizzaSlices.count - 1) * 0.5 + 0.5
            
            // Scale the entire view after all slices have fully appeared
            DispatchQueue.main.asyncAfter(deadline: .now() + totalAnimationTime) {
                withAnimation(.easeInOut(duration: 0.5)) {
                    viewScale = 1.3
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        viewScale = 1.0
                    }
                }
            }
        }
    }
}
