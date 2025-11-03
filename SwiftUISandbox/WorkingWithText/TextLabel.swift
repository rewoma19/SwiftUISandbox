import SwiftUI

struct TextLabel: View {
    var body: some View {
        VStack(spacing: 20) {
//        To show text and icons / images side by side, we make use of the Label view, which takes the desired text as its first argument and then the icon or image as the second
//            The icon will be displayed before the text
//        We can change the size of both the text and icon by using the font modifier
            Label("My account", systemImage: "folder.circle")
                .font(.title)
//        To show your own image rather than an icon, replace systemImage with image
//          Label("Welcome", image: "star")
            
//            Using the labelStyle modifier, we can control whether we are showing both the icon and text, or just the icon or text alone. Its arguments / values include iconOnly, titleOnly, and titleAndIcon
            Label("Icon Only", systemImage: "paperplane")
                .font(.title)
                .labelStyle(.iconOnly)
            
            Label("Text Only", systemImage: "star")
                .font(.title)
                .labelStyle(.titleOnly)
            
//            We can make even more custom Label views like this below
            Label {
                Text("Raphael the dev")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
            } icon: {
                Circle()
                    .fill(.blue)
                    .frame(width: 60)
            }
        }
    }
}

#Preview {
    TextLabel()
}
