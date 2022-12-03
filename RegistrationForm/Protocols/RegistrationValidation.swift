import UIKit

protocol RegistrationValidation: RegistrationAlerts {
    func registrationValidation(emailTextField: RegistrationUITextField, passwordTextField: RegistrationUITextField)
}

extension RegistrationUITextField {
    func emailValidation() -> Bool {
        guard let emailText = text else {
            fatalError("email text not found")
        }
        let emailFormat = "[A-Za-z.]+@[A-Za-z.]+\\.[A-Za-z]{2,3}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: emailText)
    }
}

extension RegistrationValidation {
    // MARK: - API
    func registrationValidation(emailTextField: RegistrationUITextField, passwordTextField: RegistrationUITextField) {
        privateRegistrationValidation(emailTextField: emailTextField, passwordTextField: passwordTextField)
    }

    // MARK: - Helpers
    private func privateRegistrationValidation(
        emailTextField: RegistrationUITextField,
        passwordTextField: RegistrationUITextField
    ) {
        if emailTextField.text?.isEmpty ?? true && passwordTextField.text?.isEmpty ?? true {
            showEmptyFieldsAlert()
        } else if emailTextField.text?.isEmpty ?? true {
            showEmptyEmailFieldAlert()
        } else if emailTextField.emailValidation() == false {
            showEmailIsNotValidAlert()
        } else if passwordTextField.text?.isEmpty ?? true {
            showEmptyPasswordFieldAlert()
        } else if passwordTextField.text?.count ?? 0 < 6 {
            showMinLengthPasswordAlert()
        } else if passwordTextField.text?.count ?? 0 > 15 {
            showMaxLengthPasswordAlert()
        } else {
            showSuccessAlert()
        }
    }
}
