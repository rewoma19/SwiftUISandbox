import SwiftUI

struct TextAlign: View {
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
//    Let's have a default text alignment of leading
    @State private var alignment = TextAlignment.leading
    
    var body: some View {
        VStack(spacing: 20) {
//            Creating a Picker that will allow us to choose and change the multiline text alignment
            Picker("Text alignment", selection: $alignment) {
                ForEach(alignments, id: \.self) { alignment in
                    Text(String(describing: alignment))
                }
            }
            .pickerStyle(.wheel)
            //        Text views that wrap across multiple lines align to the leading edge by default (left hand side)
            //        We can change that using the multilineTextAlignment modifier, which takes arguments like .center or .trailing
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            
//            using the alignment based on the picker value
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .multilineTextAlignment(alignment)
        }
    }
}

#Preview {
    TextAlign()
}
