//
//  ContentView.swift
//  sparrowsprint2
//
//  Created by Artem Dragunov on 03.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var minWidth = 100.0
    @State private var maxWidth = 300.0
    @State private var width = 300.0
    
    
    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 0) {
                
                
                Text("Марафон ")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(.gray)
                +
                Text("по SwiftUI ")
                    .font(.system(size: 18, weight: .regular))
                +
                Text("«Отцовский пинок»")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundStyle(.blue)
                
            }
            
            .frame(width: CGFloat(width))
            .frame(minHeight: 200)
            .border(Color.red, width: 1)
            .padding(.bottom)
            
            Slider(
                value: $width,
                in: minWidth...maxWidth
            )
            .padding(.horizontal, 20)
        }
        
    }
}

#Preview {
    ContentView()
}
