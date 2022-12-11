import Foundation

extension RegistrationUITextField {
    enum Constants {
        static let emailFormat = "[A-Za-z.]+@[A-Za-z.]+\\.[A-Za-z]{2,3}"
        static let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
    }
}
