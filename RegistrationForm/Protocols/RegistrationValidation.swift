import UIKit

protocol RegistrationValidation: RegistrationAlerts {
    func registrationValidation(emailTextField: RegistrationUITextField, passwordTextField: RegistrationUITextField)
}

extension RegistrationValidation {
    // MARK: - API
    func registrationValidation(emailTextField: RegistrationUITextField, passwordTextField: RegistrationUITextField) {
        checkRegistrationValidation(emailTextField: emailTextField, passwordTextField: passwordTextField)
    }

    // MARK: - Helpers
    private func checkRegistrationValidation(
        emailTextField: RegistrationUITextField,
        passwordTextField: RegistrationUITextField
    ) {
        if emailTextField.text?.isEmpty ?? true && passwordTextField.text?.isEmpty ?? true {
            showEmptyFieldsAlert()
        } else if emailTextField.text?.isEmpty ?? true {
            showEmptyEmailFieldAlert()
        } else if emailTextField.isEmailValidate() == false {
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
