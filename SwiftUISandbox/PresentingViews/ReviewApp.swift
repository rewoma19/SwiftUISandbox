// We first need to import StoreKit
import StoreKit
import SwiftUI

struct ReviewApp: View {
//    The requestReview environment key allows us to as the user to leave a review for our app
//    NOTE that this is something we do not want to misuse / spam our users with
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        Button("Review the app") {
            requestReview()
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ReviewApp()
}
