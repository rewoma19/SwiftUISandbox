import SwiftUI

struct CombiningText: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
//            We can combine Text views by using string interpolation inside one overall Text view
//            We might want to do this when we want certain words in one sentence to stand out with different font sizes or colors
//            Just as how we would use string interpolation with a value, we instead place a Text view inside the \() syntax
            Text("\(Text("SwiftUI").font(.largeTitle)) \(Text("is").font(.headline)) \(Text("awesome").font(.footnote))")
            Text("\(Text("SwiftUI").foregroundStyle(.red)) \(Text("is").foregroundStyle(.green)) \(Text("awesome").foregroundStyle(.blue))")
        }
        
    }
}

#Preview {
    CombiningText()
}
