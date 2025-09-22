import SwiftUI

struct SearchBarView: View {
    @State private var inputText: String = ""
    @FocusState private var isFocused: Bool // Track focus

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)

            TextField("Search Product, Dish", text: $inputText)
                .foregroundColor(.primary)
                .focused($isFocused) // Bind focus
                .onSubmit {
                    isFocused = false // Dismiss keyboard on Return
                }
        }
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 1)
        )
        .padding(.horizontal)
//        .border(.black)
        .onTapGesture {
            isFocused = true // Dismiss keyboard if tapping outside
        }
    }
}

#Preview {
    SearchBarView()
}
