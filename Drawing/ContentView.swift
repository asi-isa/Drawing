import SwiftUI
import Playgrounds


struct ContentView: View {
    @State private var insetAmount = 50.0
    
    var body: some View {
        Trapezoid(insetAmount: insetAmount)
            .frame(width: 200, height: 100)
            .padding(50)
            .onTapGesture {
                withAnimation {
                    insetAmount = Double.random(in: 10...90)
                }
            }
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
