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

    // MARK: - Helpers
    private func showAlert(title: String, message: String) -> UIAlertController {
        serviceGranted = true
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alert
    }

    // MARK: - API
    func showEmptyFieldsAlert() -> UIAlertController {
        let emptyFieldsAlert = showAlert(title: "Attention", message: "Make sure you have filled all fields.")
        return emptyFieldsAlert
    }

    func showEmptyEmailFieldAlert() -> UIAlertController {
        let emailFieldAlert = showAlert(title: "Attention", message: "Make sure you have filled email field.")
        return emailFieldAlert
    }

    func showEmptyPasswordFieldAlert() -> UIAlertController {
        let passwordFieldAlert = showAlert(title: "Attention", message: "Make sure you have filled password field.")
        return passwordFieldAlert
    }

    func showSuccessAlert() -> UIAlertController {
        let alertSuccess = showAlert(title: "Success!", message: "You're breathtaking")
        return alertSuccess
    }

    func showMinLengthPasswordAlert() -> UIAlertController {
        let minLengthPasswordAlert = showAlert(
            title: "Attention",
            message: "Enter password at least than 6 characters.")
        return minLengthPasswordAlert
    }

    func showMaxLengthPasswordAlert() -> UIAlertController {
        let maxLengthPasswordAlert = showAlert(
            title: "Attention",
            message: "Enter password 15 or less characters.")
        return maxLengthPasswordAlert
    }
}
