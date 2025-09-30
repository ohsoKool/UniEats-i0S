import SwiftUI

struct LearningUI: View {
    @State private var animateCircle = false

    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .fill(.blue)
                .frame(width: animateCircle ? 500 : 100, height: animateCircle ? 100 : 100)
                .opacity(animateCircle ? 1 : 0.6)
//                .offset(x: animateCircle ? 100 : 0, y: animateCircle ? -100 : 0)
                .onTapGesture {
//                    withAnimation(.spring(dampingFraction: 0.5, duration: 0.5)) {
                    animateCircle.toggle()
                }
        }
    }
}

// }

#Preview {
    LearningUI()
}
