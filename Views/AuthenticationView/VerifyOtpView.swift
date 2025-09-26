import SwiftUI

struct VerifyOtpView: View {
    @State private var otp: String = ""
    private let otpLength = 6

    var body: some View {
        VStack(spacing: 30) {
            Text("Verify account with OTP")
                .font(.title)
                .fontWeight(.bold)

            Text("We've sent a 6 digit code to +91 9999999999")
                .foregroundColor(.gray)

            // OTP Boxes
            HStack(spacing: 10) {
                ForEach(0 ..< otpLength, id: \.self) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                            .frame(width: 45, height: 55)

                        Text(otp.count > index ? String(otp[otp.index(otp.startIndex, offsetBy: index)]) : "")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
            }

            // Hidden TextField
            TextField("", text: $otp)
                .keyboardType(.numberPad)
                .onChange(of: otp) { newValue in
                    if newValue.count > otpLength {
                        otp = String(newValue.prefix(otpLength))
                    }
                }
                .frame(width: 0, height: 0)
                .opacity(0.01)
                .accentColor(.clear)

            Button("Verify OTP") {
                print("Entered OTP: \(otp)")
            }
            .disabled(otp.count < otpLength)
            .padding()
            .frame(maxWidth: .infinity)
            .background(otp.count == otpLength ? Color.orange : Color.gray)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .onTapGesture {
            // Bring up keyboard by focusing hidden text field
            UIApplication.shared.sendAction(#selector(UIResponder.becomeFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

#Preview {
    VerifyOtpView()
}
