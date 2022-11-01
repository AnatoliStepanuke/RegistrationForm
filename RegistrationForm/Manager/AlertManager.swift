import UIKit

final class AlertManager {
    // MARK: - Constants
    // MARK: Public
    static let instance = AlertManager()

    // MARK: - Properties
    // MARK: Public
    var serviceGranted: Bool?

    // MARK: - Init
    private init() { }

    // MARK: - API
    func showAlert(title: String, message: String) -> UIAlertController {
        serviceGranted = true
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alert
    }

    func showEmptyFieldsAlert() -> UIAlertController {
        let alertEmptyFields = showAlert(title: "Attention", message: "Make sure you have filled all fields")
        return alertEmptyFields
    }

    func showEmailEmptyFieldAlert() -> UIAlertController {
        let alertEmailField = showAlert(title: "Attention", message: "Make sure you have filled email field")
        return alertEmailField
    }

    func showPasswordEmptyFieldAlert() -> UIAlertController {
        let alertPasswordField = showAlert(title: "Attention", message: "Make sure you have filled password field")
        return alertPasswordField
    }

    func showSuccessAlert() -> UIAlertController {
        let alertPasswordField = showAlert(title: "Success!", message: "You're breathtaking")
        return alertPasswordField
    }

}
