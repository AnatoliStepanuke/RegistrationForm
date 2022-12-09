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
        switch (
            emailTextField.text?.isEmpty,
            passwordTextField.text?.isEmpty,
            emailTextField.isEmailValidate(),
            passwordTextField.text?.count ?? 0 < 6,
            passwordTextField.text?.count ?? 0 > 15
        ) {
        case (true, true, _, _, _): showEmptyFieldsAlert()
        case(true, false, _, _, _): showEmptyEmailFieldAlert()
        case (false, true, _, _, _): showEmptyPasswordFieldAlert()
        case (_, _, false, _, _): showEmailIsNotValidAlert()
        case(_, _, _, true, _): showMinLengthPasswordAlert()
        case(_, _, _, _, true): showMaxLengthPasswordAlert()
        case (_, _, _, _, _): showSuccessAlert()
        }
    }
}
