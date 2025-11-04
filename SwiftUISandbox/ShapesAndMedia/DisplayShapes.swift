import SwiftUI

struct DisplayShapes: View {
    var body: some View {
        VStack(spacing: 20) {
//            In SwiftUI, we have different built-in shape views
            Rectangle()
                .fill(.green)
                .frame(width: 200, height: 200)
            
            Circle()
                .stroke(.red, lineWidth: 20)
                .fill(.blue.gradient)
                .frame(width: 100, height: 100)
            
//            We also have a built-in view for rounded rectangles
            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(width: 100, height: 60)
            
            Capsule()
                .fill(.red)
                .frame(width: 140, height: 100)
            
            ZStack {
                Circle()
                    .fill(.orange)
                
//                In this ZStack, the bordered circle will he place on top of the orange-filled circle
                Circle()
                    .strokeBorder(.red, lineWidth: 20)
            }
            .frame(width: 150, height: 150)
        }
    }
}

#Preview {
    DisplayShapes()
}
