import SwiftUI
import Playgrounds

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 250, y: 100))
            path.addLine(to: CGPoint(x: 400, y: 400))
            path.addLine(to: CGPoint(x: 100, y: 400))
            path.addLine(to: CGPoint(x: 250, y: 100))
            //path.closeSubpath()
        }
        .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        .frame(width: 500, height: 500)
        .padding(50)
        
        
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
