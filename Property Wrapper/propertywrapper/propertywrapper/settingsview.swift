//
//  settingsview.swift
//  propertywrapper
//
//  Created by user271408 on 3/11/25.
//

import SwiftUI

struct settingsview: View {
    @Binding var sizef :Double
    @Binding var fcolor : Color
    var body: some View {
        
        VStack{
            Text("Font Size: \(Int(sizef))")
                .font(.system(size: CGFloat(sizef)))
            Slider(value: $sizef, in : 14...22)
            
            ColorPicker("Default Theme", selection: $fcolor)
        }
        .padding()
    }
}

#Preview {
    settingsview(sizef: .constant(14), fcolor: .constant(.black))
}
