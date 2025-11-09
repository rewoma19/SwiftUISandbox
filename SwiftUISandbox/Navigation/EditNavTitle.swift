import SwiftUI

struct EditNavTitle: View {
    @State private var title = "Welcome"
    
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
//            Adding .toolbarRole(.editor) is recommended if the title is there because it represents the name of some content a user might be editing. It will have the title aligned to the leading (left) edge
//                .toolbarRole(.editor)
//            NOTE that the navigationSubtitle modifier is targeted towards iOS 26
//                .navigationSubtitle("Select an option")
        }
    }
}

#Preview {
    EditNavTitle()
}
