import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                Tab("Home", systemImage: "house") {
                    Text("Welcome!")
                        .font(.title)
                }
                
                Tab("Scrollview", systemImage: "text.page") {
                    ScrollViews()
                }
                
                Tab("Colors", systemImage: "paintpalette") {
                    PickingColors()
                }
            }
            .navigationTitle("Welcome")
        }
    }
}

#Preview {
    ContentView()
}
