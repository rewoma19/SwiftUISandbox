import SwiftUI

struct SelectText: View {
    var body: some View {
        VStack(spacing: 40) {
            //        By default, Text views cannot be selected.
            //        We can enable such by using the textSelection modifier, which takes the .enabled argument / value
            Text("You can't touch this")
            Text("Break it down!")
                .textSelection(.enabled)
            
//            We can use the textSelection modifier on a group of text views, like below. This will make all text views in the group to be selectable
            VStack(spacing: 20) {
                Text("You can't touch this 2")
                Text("Break it down! 2")
            }
            .textSelection(.enabled)
            
//            We can also use the textSelection modifier on a list, making all the text in the rows become selected
            List(0..<8) {index in
                    Text("Row \(index)")
            }
            .textSelection(.enabled)
        }
    }
}

#Preview {
    SelectText()
}
