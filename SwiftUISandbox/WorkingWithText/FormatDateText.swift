import SwiftUI

struct FormatDateText: View {
    var body: some View {
        VStack(spacing: 20) {
    //        Handling date ranges
    //        This will be formatted properly according to the user's locale
//            .addingTimeInterval(600) means 600 seconds or 10 minutes from now
            Text(Date.now...Date.now.addingTimeInterval(600))
            
//            This displays today's date
            Text(Date.now, style: .date)
            
//            Show distance from current time to added interval
//            Automatically updates
            Text(Date.now.addingTimeInterval(600), style: .relative)
            
//            Timer (counting down based on added interval) that automatically updates
            Text(Date.now.addingTimeInterval(600), style: .timer)
        }
    }
}

#Preview {
    FormatDateText()
}
