import SwiftUI

struct ScrollViews: View {
    var body: some View {
        VStack {
//            Vertical scrollview with visible scroll indicator
//            ScrollView {
//                VStack(spacing: 20) {
//                    ForEach(0..<10) { _ in
//                        Rectangle()
//                            .fill(.black)
//                            .frame(width: 200, height: 200)
//                    }
//                }
//            }
//            .padding()
//            .frame(height: 350)
//            .background(.white)
//            .shadow(radius: 6)
            
//            Horizontal Scrollview with hidden scroll indicator
//            NOTE that both axes in a scrollview can be specified using [.horizontal, .vertical
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<8) {_ in
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.red)
                            .frame(width: 200, height: 140)
                    }
                }
            }
            .padding()
            .frame(height: 200)
            .background(.white)
            .shadow(radius: 6)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue.gradient)
    }
}

#Preview {
    ScrollViews()
}
