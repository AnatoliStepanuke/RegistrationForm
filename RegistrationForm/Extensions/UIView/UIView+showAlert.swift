import UIKit

extension UIViewController: RegistrationAlerts {
    func showEmptyFieldsAlert() { self.present(AlertManager.instance.showEmptyFieldsAlert(), animated: true)}
    func showEmptyEmailFieldAlert() { self.present(AlertManager.instance.showEmptyEmailFieldAlert(), animated: true)}
    func showEmptyPasswordFieldAlert() {
        self.present(AlertManager.instance.showEmptyPasswordFieldAlert(), animated: true)
    }
    func showSuccessAlert() { self.present(AlertManager.instance.showSuccessAlert(), animated: true)}
    func showMinLengthPasswordAlert() {
        self.present(AlertManager.instance.showMinLengthPasswordAlert(), animated: true)
    }
    func showMaxLengthPasswordAlert() {
        self.present(AlertManager.instance.showMaxLengthPasswordAlert(), animated: true)
    }
}
