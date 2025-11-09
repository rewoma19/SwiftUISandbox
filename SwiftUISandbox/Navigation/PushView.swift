import SwiftUI

struct PushView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Move to the main view") {
                ContentView()
            }
            .navigationTitle("Navigation")
        }
    }
}

#Preview {
    PushView()
}
