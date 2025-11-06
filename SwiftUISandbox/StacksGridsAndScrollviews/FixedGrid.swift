import SwiftUI

struct FixedGrid: View {
//    @State private var redScore = 0
//    @State private var blueScore = 0
    
    var body: some View {
//        In SwiftUI, we can create a static grid of views by using the Grid view.
//        We can also indicate individual rows with the GridRow view inside a Grid view
//        NOTE that unlike LazyHGrid and LazyVGrid views, a plain Grid loads all its nested views immediately, so be careful of how much work is done in those views
//        Grid {
//            GridRow {
//                Text("Top left")
//                    .background(.red)
//                
//                Text("Top right")
//                    .background(.orange)
//            }
//            
//            GridRow {
//                Text("Bottom left")
//                    .background(.green)
//                
//                Text("Bottom right")
//                    .background(.blue)
//            }
//        }
//        .font(.title)
//        Grid {
//            GridRow {
//                Text("Red")
//                
//                ForEach(0..<redScore, id: \.self) { _ in
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 20, height: 20)
//                }
//            }
//            
//            GridRow {
//                Text("Blue")
//                
//                ForEach(0..<blueScore, id: \.self) { _ in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 20, height: 20)
//                }
//            }
//        }
//        .font(.title)
//        
//        Button("Add to red") {
//            redScore += 1
//        }
//        .buttonStyle(.borderedProminent)
//        .tint(.red)
//        
//        Button("Add to blue") {
//            blueScore += 1
//        }
//        .buttonStyle(.borderedProminent)
//        .tint(.blue)
        
//        Making s tic-tac-toe bosrd using a Grid view
        Grid(horizontalSpacing: 20, verticalSpacing: 20) {
            GridRow {
                Image(systemName: "xmark")
                Image(systemName: "xmark")
                Image(systemName: "xmark")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .fill(.red)
            )
            
            GridRow {
                Image(systemName: "circle")
                Image(systemName: "xmark")
                Image(systemName: "circle")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .fill(.blue)
            )
            
            GridRow {
                Image(systemName: "xmark")
                Image(systemName: "circle")
                Image(systemName: "circle")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .fill(.green)
            )
        }
        .padding()
        .font(.largeTitle)
        .foregroundStyle(.white)
        .background(.gray)
    }
}

#Preview {
    FixedGrid()
}
