import UIKit

final class AlertManager {
    // MARK: - Helpers
    private func showAlert(title: String, message: String) -> UIAlertController {
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

    func showEmailIsNotValidAlert() -> UIAlertController {
        let emailIsNotValid = showAlert(
            title: "Attention",
            message:
            """
            Email address is not valid.
            Email must contains only upper or bottom letters, at and point symbols.
            The domain name is no less than 2 and no longer than 3 characters.
            Example: user@mail.com
            """
        )
        return emailIsNotValid
    }
}
