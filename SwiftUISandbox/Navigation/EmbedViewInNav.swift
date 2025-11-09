import SwiftUI

struct EmbedViewInNav: View {
    var body: some View {
        NavigationStack {
            Text("SwiftUI")
                .navigationTitle("Welcome")
//                .navigationBarTitleDisplayMode(.inline)
//            The navigationSubtitle modifier is targeted towards iOS 26 and later
//                .navigationSubtitle("Select an option")
        }
    }
}

#Preview {
    EmbedViewInNav()
}
