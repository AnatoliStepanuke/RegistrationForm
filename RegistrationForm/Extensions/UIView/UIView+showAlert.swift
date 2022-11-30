import UIKit

extension UIViewController: RegistrationAlerts {
    func showEmptyFieldsAlert() { self.present(AlertManager().showEmptyFieldsAlert(), animated: true) }
    func showEmptyEmailFieldAlert() { self.present(AlertManager().showEmptyEmailFieldAlert(), animated: true) }
    func showEmptyPasswordFieldAlert() { self.present(AlertManager().showEmptyPasswordFieldAlert(), animated: true) }
    func showSuccessAlert() { self.present(AlertManager().showSuccessAlert(), animated: true) }
    func showMinLengthPasswordAlert() { self.present(AlertManager().showMinLengthPasswordAlert(), animated: true) }
    func showMaxLengthPasswordAlert() { self.present(AlertManager().showMaxLengthPasswordAlert(), animated: true) }
}
