import SwiftUI

struct Whynottry: View {
    // Move the data array and selected state outside of the body
    var data = ["Archery", "Baseball", "Basketball", "Fencing", "cricket"]
    
    @State var selected = "Baseball" // Initializing selected directly
    
    var body: some View {
        // Vstack, HStack, and Zstack
        VStack {
            Text("Why not try")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Circle()
                .fill(.purple)
                .overlay {
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                }
            
            Text("\(selected)")
                .font(.title)
            
            Button("Try again") {
                // Randomly pick a new option from the data array
                selected = data.randomElement() ?? "Baseball" // Ensure fallback if randomElement is nil
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    Whynottry()
}
