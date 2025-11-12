import SwiftUI

struct FixedSpacer: View {
    var body: some View {
        VStack {
            Text("First Label")
//            By default, a Spacer() view will grow to occupy as much available space as possible.
//            You can make a fixed size Spacer() view by using the frame modifier with a height or width value
            Spacer()
                .frame(height: 50)
            Text("Second Label")
            
            HStack {
                Image(systemName: "circle.fill")
                Spacer()
                    .frame(width: 40)
                Text("Black circle")
            }
            
            VStack {
                Text("Black text")
//                You can also use minHeight and maxHeight along the frame modifier on a Spacer() view.
//                This Spacer code below means that the spacer will be at least 50 points in height, but will not grow to more than 200 points in height
                Spacer()
                    .frame(minHeight: 50, maxHeight: 200)
                Text("Another black text")
            }
            
//            If some views might be in a HStack or VStack, to add certain amount of points of space no matter the direction, you can use minLength
            HStack {
                Text("ONe")
                Spacer(minLength: 50)
                Text("Two")
            }
        }
        .padding()
    }
}

#Preview {
    FixedSpacer()
}
