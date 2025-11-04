import SwiftUI

struct Images: View {
    var body: some View {
        VStack(spacing: 40) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            In SwiftUI, we display images by making use of the Image view
//            We can resize images by using the resizable modifer along with other modifiers like the frame modifier
            Image(.image)
                .resizable()
//            We can control the aspect ratio of our images by using the aspectRatio modifier
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
//            To display an icon from Apple's SF Symbols icon set, we write Image(systemName: ...)
//            The font modifier can be used to change the size of an icon
            HStack(spacing: 20) {
                Image(systemName: "cloud.heavyrain.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                
                
    //            We can activate multi-color mode for our icons that have colored elements by using the renderingMode modifier with a value of original.
                Image(systemName: "cloud.sun.rain.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)
                    .padding()
                    .background(.black)
                    .clipShape(.circle)
                
//                Using the foregroundStyle modifier alongside the renderingMode modifier for icons that have colored elements, will change part of the coloring
                Image(systemName: "person.crop.circle.badge.plus")
                    .renderingMode(.original)
                    .foregroundStyle(.blue)
                    .font(.largeTitle)
                    .background(.red)
            }
        }
        .padding()
    }
}

#Preview {
    Images()
}
