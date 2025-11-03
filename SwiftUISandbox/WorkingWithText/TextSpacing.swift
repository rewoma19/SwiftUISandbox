import SwiftUI

struct TextSpacing: View {
    @State private var spacingAmt = 10.0
    
    var body: some View {
        VStack(spacing: 20) {
//            To increase letter spacing in our text, we can make use of the tracking modifier, which takes Integer arguments / values
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .tracking(spacingAmt)
            
//            We can also use the kerning modifier. Think of tracking as changing the OVERALL spacing in the text and kerning as the INDIVIDUAL spacing between characters in the text.
            Text("Hello, World!")
                .kerning(spacingAmt)
            
            Slider(value: $spacingAmt, in: 0...100) {
                Text("Change the letter spacing")
            }
        }
        .padding()
    }
}

#Preview {
    TextSpacing()
}
