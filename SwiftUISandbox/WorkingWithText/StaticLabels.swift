import SwiftUI

struct StaticLabels: View {
    var body: some View {
        VStack(spacing: 40) {
//            By default, Text views in SwiftUI are centered in the main / parent view
    //  By default, text views wrap across as many lines as possible, but you can limit the number of lines shown, by using the lineLimit modifier, which takes an Integer argument
            Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                .lineLimit(2)
                .frame(width: 200)
            
//            The text view directly below will allow its content to be within 2 to 4 lines. This means that if it should grow up to 5 lines or more, the overflowing text would be shown as ellipsis (...)
            
            Text("This is some longer text that is limited to a specific range of lines, so anything more than four lines will cause the text to clip.")
                .lineLimit(2...4)
                .frame(width: 200)
            
//            Using the reservesSpace parameter with the lineLimit modifier on this Text view below, means that it will be sized to be exactly two lines in height.
//            Even if the text is short and only needs a single line, the content itself won't be stretched but the size of the view will be two lines in height
            Text("This is always two lines")
                .lineLimit(2, reservesSpace: true)
            
//            When using the lineLimit modifier on a Text view, by default, it truncates the text from the end and places an ellipsis at the end.
//            You cna change where you want to truncate the text and show the ellipsis, using another modifier alongside the lineLimit one, called truncationMode, which could take arguments: .head, .middle, .tail (which is the default)
            Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode().")
                .lineLimit(1)
                .truncationMode(.middle)
        }
        .padding()
    }
}

#Preview {
    StaticLabels()
}
