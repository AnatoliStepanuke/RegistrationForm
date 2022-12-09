import UIKit

protocol RegistrationPresenter {
    func checkRegistrationForm()
    func emailDomainAutocomplete(textField: UITextField, string: String) -> Bool
}

final class RegistrationScreenPresenter: RegistrationPresenter {
    // MARK: - Constants
    unowned let registrationView: RegistrationView

    // MARK: - Properties
    // MARK: - Init
    init(registrationView: RegistrationView) { self.registrationView = registrationView }

    // MARK: - API
    func checkRegistrationForm() {
        registrationView.setTargetRegistrationButton().addTarget(
            self,
            action: #selector(registrationButtonDidTapped),
            for: .touchUpInside
        )
    }

    func emailDomainAutocomplete(textField: UITextField, string: String) -> Bool {
        var stringMatch: String = ""
        if !string.isEmpty,
           let selectedTextRange = textField.selectedTextRange,
           selectedTextRange.end == textField.endOfDocument,
           let prefixRange = textField.textRange(from: textField.endOfDocument, to: selectedTextRange.start),
           let text = textField.text(in: prefixRange) {
            let prefix = text + string
            let matches = registrationView.setEmailDomains().filter {
                $0.hasPrefix(prefix)
            }
            if matches.count > 0 {
                stringMatch = matches[0]
                textField.text?.append(stringMatch)
                if let start = textField.position(
                    from: textField.beginningOfDocument,
                    offset: (textField.text?.count ?? 0) - stringMatch.count + 1
                ) {
                    textField.selectedTextRange = textField.textRange(from: start, to: textField.endOfDocument)
                    return true
                }
            }
        }
        return false
    }

    // MARK: - Actions
    // MARK: Objc Methods
    @objc private func registrationButtonDidTapped() { registrationView.setRegistrationValidation() }
}
