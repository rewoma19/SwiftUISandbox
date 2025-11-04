import SwiftUI

struct ImageBackground: View {
    var body: some View {
        VStack(spacing: 20) {
            //  As there is no dedicated modifier for showing background images or colors in SwiftUI, we can use views like the Image view, inside the background modifier
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 40))
                .foregroundStyle(.blue)
                .padding(50)
                .background(
                    Image("Image")
                        .resizable()
                )
            
//            Having a Circle view be a background to a Text view
            Text("Hacking with Swift")
                .font(.largeTitle)
                .padding()
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                )
//            We can clip background views to the size of their parent views by using the clipped modifier
                .clipped()
        }
    }
}

#Preview {
    ImageBackground()
}
