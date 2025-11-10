import SwiftUI

struct RevealContent: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 60) {
            Button("Show Details") {
                withAnimation {
                    showDetails.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            
            DisclosureGroup("Show Details", isExpanded: $showDetails) {
                Text("Long terms and conditions and stuff and stuff and stuff and stuff and stuff blah blah blah blah blah")
            }
            .frame(width: 300)
            
            DisclosureGroup("Show Terms") {
                Text("Long terms and conditions and stuff and stuff and stuff and stuff and stuff blah blah blah blah blah")
            }
            .frame(width: 300)
        }
        .padding()
    }
}

#Preview {
    RevealContent()
}
