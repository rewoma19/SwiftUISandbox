import SwiftUI

struct WebLinks: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        VStack(spacing: 40) {
//            The Link view opens a URL in Safari when clicked on
//            The Link view takes a title, and then a destination URL in form of a string
//            Link("Learn SwiftUI", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!)
//                .font(.title)
            
//            If you want a view that's not plain text to be a link, it can be done by nesting it inside the Link view and not providing a title
//            Link(destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!) {
//                Label("Learn SwiftUI", systemImage: "link.circle.fill")
//            }
//            .font(.title)
            
            Button("Visit Apple") {
                openURL(URL(string: "https://www.apple.com")!, prefersInApp: true)
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
}

#Preview {
    WebLinks()
}
