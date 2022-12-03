import Foundation

extension RegistrationUITextField {
    func isEmailValidate() -> Bool {
        guard let emailText = text else {
            fatalError("email text not found")
        }
        let emailFormat = "[A-Za-z.]+@[A-Za-z.]+\\.[A-Za-z]{2,3}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: emailText)
    }
}
