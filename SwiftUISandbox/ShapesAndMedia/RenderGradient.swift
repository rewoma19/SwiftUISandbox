import SwiftUI

struct RenderGradient: View {
    var body: some View {
        VStack(spacing: 20) {
//            For iOS 16 and later, we can make a simple linear gradient by adding .gradient to any color being used
//            Rectangle().fill(.blue.gradient)
//                .frame(height: 430)
            
//            For more advanced gradients, that are supported in iOS 16 and older, we use gradient types like LinearGradient(gradient: Gradient(colors: [], startPoint: , endPoint: ) for a linear gradient that could go from top to bottom, left to right, etc.
            
//            Text("Hello World")
//                .padding()
//                .font(.largeTitle)
//                .background(
//                    LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .leading, endPoint: .trailing)
//                )
            
            //  We also have the RadialGradient and AngularGradient gradient styles
            
            Circle()
                .fill(
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                )
        }
        .padding()
    }
}

#Preview {
    RenderGradient()
}
