//
//  ContentView.swift
//  intro
//
//  Created by user271408 on 3/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView{
        
            //Vstack, HStack, and Zstack
            VStack{
                Circle()
                    .fill(Color.red)
                    .frame(width: 400 ,height: 350)
                Circle()
                    .fill(Color.blue    )
                    .frame(width: 200 ,height: 200)
                Circle()
                    .fill(Color.blue    )
                    .frame(width: 400 ,height: 350)
            }
        }
    }
}

#Preview {
    ContentView()
}
