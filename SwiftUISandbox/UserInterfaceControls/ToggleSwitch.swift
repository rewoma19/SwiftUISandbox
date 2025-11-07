import SwiftUI

struct EmailList: Identifiable {
    var id: String
    var isSubscribed = false
}

struct ToggleSwitch: View {
    @State var lists = [
        EmailList(id: "Monthly Updates", isSubscribed: true),
        EmailList(id: "News Flashes", isSubscribed: true),
        EmailList(id: "Special Offers", isSubscribed: true)
    ]
//    @State private var showGreeting = true
    
    var body: some View {
//        VStack(spacing: 40) {
//        isOn: $showGreeting means that the binded showGreeting state variable is what this toggle switch will have control over
//            Toggle("Show welcome message", isOn: $showGreeting)
//                .toggleStyle(.button)
//                .tint(.green)
//
//        Display the text view if showGreeting evaluates to true
//            if showGreeting {
//                Text("Hello World!")
//            }
//        }
//        .padding()
        NavigationStack {
            Form {
                Section("Preferences") {
                    ForEach($lists) { $list in
                        Toggle(list.id, isOn: $list.isSubscribed)
                    }
                }
                
                Section("All lists") {
                    Toggle("Subscribe to all", sources: $lists, isOn: \.isSubscribed)
                }
            }
            .navigationTitle("Mailing Lists")
        }
    }
}

#Preview {
    ToggleSwitch()
}
