import SwiftUI

struct TabViews: View {
//    enum Section {
//        case cats
//        case dogs
//    }
    
//    @State private var selectedTab = Section.cats
    var body: some View {
//        The TabView has multiple Tab Views inside of it, with each one having a title and icon.
//        Inside the Tab View, we then have the View / content that we are navigating to
        TabView {
            Tab("Scrollview", systemImage: "person.3") {
                ScrollViews()
            }
            
            Tab("Colors", systemImage: "paintpalette") {
                PickingColors()
            }
        }
//        Grouping together for iPadOS sidebar
//        TabView {
//            TabSection("Watch") {
//                Tab("Movies", systemImage: "film") {
//                    Text("Put a MoviesView here")
//                }
//
//                Tab("TV Shows", systemImage: "tv") {
//                    Text("Put a TVShowsView here")
//                }
//            }
//
//            TabSection("Listen") {
//                Tab("Music", systemImage: "music.note.list") {
//                    Text("Put a MusicView here")
//                }
//
//                Tab("Podcasts", systemImage: "mic") {
//                    Text("Put a PodcastsView here")
//                }
//            }
//        }
////        Users can move between tabs and a sidebar using the sidebarAdabptable style
//        .tabViewStyle(.sidebarAdaptable)
        
//        Programmatically controlling tab selection (for iOS 18 and later)
//        TabView(selection: $selectedTab) {
//            Tab("Cats", systemImage: "cat", value: .cats) {
//                Button("Go to Dogs") {
//                    selectedTab = .dogs
//                }
//            }
//
//            Tab("Dogs", systemImage: "dog", value: .dogs) {
//                Button("Go to Cats") {
//                    selectedTab = .cats
//                }
//            }
//        }

    }
}

#Preview {
    TabViews()
}
