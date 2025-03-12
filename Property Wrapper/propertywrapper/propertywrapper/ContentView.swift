//
//  ContentView.swift
//  propertywrapper
//
//  Created by user271408 on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var displaysheet: Bool = false
    @State var sizef: Double = 14
    @State var fcolor: Color = 	.green
    var body: some View {
        VStack (alignment: .leading, spacing: 25){
            
            Text("Hello, world!")
                .fontWeight(.bold)
                .font(.title)
                .multilineTextAlignment(.leading)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .font(.system(size: CGFloat(sizef)))
                //.multilineTextAlignment(.center)
                .foregroundStyle(fcolor)
            
            Button ("Submit") {
                displaysheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            Spacer()
        }
        .sheet(isPresented: $displaysheet ){
            settingsview(sizef: $sizef, fcolor: $fcolor)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
