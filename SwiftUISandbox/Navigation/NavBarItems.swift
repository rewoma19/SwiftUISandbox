import SwiftUI

struct NavBarItems: View {
    var body: some View {
        NavigationStack {
            Text("SwiftUI")
                .navigationTitle("Hello")
                .navigationBarTitleDisplayMode(.inline)
//            For a view embedded in a NavigationStack, we can use the toolbar modifier to add button views to the leading (left) and trailing (right) edges of the navigation bar
//            By default, a button in the toolbar modifier will be placed at the trailing (right) edge
//                .toolbar {
//                    Button("About") {}
//                        .buttonStyle(.borderedProminent)
//                        .tint(.accentColor)
//                }
                .toolbar {
//                    We can control the position of our button in the navigation bar by wrapping it in a ToolbarItem view, and use the placement parameter
//                    ToolbarItem(placement: .topBarLeading) {
//                        Button("Help") {}
//                            .buttonStyle(.borderedProminent)
//                            .tint(.accentColor)
//                    }
                    ToolbarItemGroup(placement: .primaryAction) {
                        Button("About") {}
                        Button("Help") {}
                    }
                    
//                    These buttons below will be grouped into a menu because of the secondaryAction placement
                    ToolbarItemGroup(placement: .secondaryAction) {
                        Button("Settings") {}
                        Button("Email me") {}
                    }
                }
        }
    }
}

#Preview {
    NavBarItems()
}
