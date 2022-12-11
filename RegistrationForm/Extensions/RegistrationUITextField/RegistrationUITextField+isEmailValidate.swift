import Foundation

extension RegistrationUITextField {
    func isEmailValidate() -> Bool {
        guard let emailText = text else {
            fatalError("email text not found")
        }
        return Constants.emailPredicate.evaluate(with: emailText)
    }
}
