//
//  InputDataFieldView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/19/25.
//
import SwiftUI

struct InputDataFieldView: View {
    @State private var inputField: String = ""
    var placeholderText: String = ""
    var fieldName: String = ""
    @FocusState private var isFocused: Bool
    var body: some View {
        VStack(alignment: .leading) {
            Text(fieldName)
                .font(.system(size: 25))
                .frame(alignment: .leading)
            TextField(placeholderText, text: $inputField)
                .padding()
                //                .frame(maxWidth: .infinity)
                .foregroundColor(.black)
                .focused($isFocused) // Bind focus
                .onSubmit {
                    isFocused = false // Dismiss keyboard on Return
                }
                .frame(width: 350, height: 60)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(18)
                .onTapGesture {
                    isFocused = true
                }
        }
    }
}

#Preview {
    InputDataFieldView(placeholderText: "Enter your Name", fieldName: "FullName")
}
