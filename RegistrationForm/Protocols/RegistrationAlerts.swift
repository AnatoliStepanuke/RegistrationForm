import Foundation

protocol RegistrationAlerts {
    func showEmptyFieldsAlert()
    func showEmptyEmailFieldAlert()
    func showEmptyPasswordFieldAlert()
    func showSuccessAlert()
    func showMinLengthPasswordAlert()
    func showMaxLengthPasswordAlert()
    func showEmailIsNotValidAlert()
}
