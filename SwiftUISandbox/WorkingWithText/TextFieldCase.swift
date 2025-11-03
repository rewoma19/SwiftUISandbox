import SwiftUI

struct TextFieldCase: View {
    @State private var name = "Raphael"
    
    var body: some View {
        VStack(spacing: 20) {
            //  We can force either uppercase or lowecase text for a TextField view by using the textCase modifier, which could take values .uppercase or .lowercase
            //  The TextField view first takes a string for its placeholder, then binding text as its second argument/value
            TextField("Say your name!", text: $name)
                .textFieldStyle(.roundedBorder)
                .textCase(.uppercase)
            Text(name)
        }
        .padding()
    }
}

#Preview {
    TextFieldCase()
}
