import UIKit

protocol RegistrationValidation: RegistrationAlerts {
    func registrationValidation(emailTextField: RegistrationUITextField, passwordTextField: RegistrationUITextField)
}

extension RegistrationValidation {
    func registrationValidation(emailTextField: RegistrationUITextField, passwordTextField: RegistrationUITextField) {
        privateRegistrationValidation(emailTextField: emailTextField, passwordTextField: passwordTextField)
    }

    private func privateRegistrationValidation(
        emailTextField: RegistrationUITextField,
        passwordTextField: RegistrationUITextField
    ) {
        if emailTextField.text?.isEmpty ?? true && passwordTextField.text?.isEmpty ?? true {
            showEmptyFieldsAlert()
        } else if emailTextField.text?.isEmpty ?? true {
            showEmptyEmailFieldAlert()
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
