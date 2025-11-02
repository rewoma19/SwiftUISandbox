import SwiftUI

struct StylingText: View {
    var body: some View {
        VStack(spacing: 40) {
            //  You can modify the font size of your Text using the font modifier.
            //  You can also modify the size of the text VIEW using the frame modifier, which takes width, height, and more arguments
//            You can increase / decrease the line spacing of your text by using the lineSpacing modifier with takes Int arguments. The default is 0
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .lineSpacing(20)
                .frame(width: 300)
            
//            You can change the color of your Text by using the foregroundStyle modifer, which can take arguments .red, .blue, and more
            Text("The best laid plans")
                .foregroundStyle(.red)
            
//            You could even use colored gradients on your text
            Text("The second best laid plans")
                .foregroundStyle(.yellow.gradient)
            
//            You can also apply a background color to a Text view by using the background modifier
            Text("The 3rd best laid plans")
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .font(.headline)
            
//            We can change the font style by using the fontDesign modifier. Some of its arguments are .serif, .monospaced, etc.
            Text("Hello, world!")
                .fontDesign(.monospaced)
            
//            We could compress or expant the font of a Text view using the fontWidth modifier. Note that is only works if the font has been designed to support it.
            Text("Hello, world!")
                .fontWidth(.condensed)
        }
    }
}

#Preview {
    StylingText()
}
