import SwiftUI

struct ListRowBackground: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(1..<5, id: \.self) {
                    Text("Row \($0)")
                }
//                To set the background color of list rows, we make use of the listRowBackground modifier on the ForEach inside the List
                .listRowBackground(Color.teal)
            }
            .navigationTitle("Colored List Rows")
        }
    }
}

#Preview {
    ListRowBackground()
}
