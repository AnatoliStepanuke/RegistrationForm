import UIKit

extension RegistrationScreenView: UITextFieldDelegate {
    func textField(
        _ textField: UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String
    ) -> Bool {
        guard let registrationPresenter = registrationPresenter else {
            fatalError("registrationPresenter in not found.")
        }
        return !registrationPresenter.emailDomainAutocomplete(textField: textField, string: string)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
