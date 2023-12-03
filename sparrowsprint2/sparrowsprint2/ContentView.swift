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
    @State private var isEditing = false
    
    
    var body: some View {
        VStack {
            VStack {
                
                
                Text("Марафон ")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundStyle(.gray)
                + Text("по SwiftUI")
                    .font(.system(size: 18, weight: .regular))
    
                
                Text("«Отцовский пинок»")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .border(Color.red, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: CGFloat(width), alignment: .leading)
            
            Slider(
                value: $width,
                in: minWidth...maxWidth,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
        }
        Text("\(width)")
            .foregroundColor(isEditing ? .red : .blue)
            .padding()
        
    }
}

#Preview {
    ContentView()
}
