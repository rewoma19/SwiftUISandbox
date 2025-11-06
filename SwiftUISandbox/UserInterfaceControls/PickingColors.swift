import SwiftUI

struct PickingColors: View {
    @State private var bgColor: Color = .white
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Favorite color")
                    .foregroundStyle(.blue)
                    .font(.system(size: 20))
                Spacer()
                ColorPicker("Set a background color", selection: $bgColor, supportsOpacity: false)
                    .labelsHidden()
            }
            Spacer()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

#Preview {
    PickingColors()
}
