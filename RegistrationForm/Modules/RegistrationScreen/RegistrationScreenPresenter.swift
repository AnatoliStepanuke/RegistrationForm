import Foundation

protocol RegistrationPresenter {
    func checkRegistrationForm()
}

final class RegistrationScreenPresenter: RegistrationPresenter {
    // MARK: - Constants
    unowned let registrationView: RegistrationView

    // MARK: - Properties
    // MARK: - Init
    init(registrationView: RegistrationView) {
        self.registrationView = registrationView
    }

    // MARK: - API
    func checkRegistrationForm() {
        registrationView.setTargetRegistrationButton().addTarget(
            self,
            action: #selector(registrationButtonDidTapped),
            for: .touchUpInside
        )
    }

    // MARK: - Helpers
    private func validateEmail(enteredEmail: String) -> Bool {
        let emailFormat = "[A-Za-z.]+@[A-Za-z.]+.[A-Za-z]{2,3}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
    }

    // MARK: - Actions
    // MARK: Objc Methods
    @objc private func registrationButtonDidTapped() {
        registrationView.setRegistrationValidation()
        if validateEmail(enteredEmail: registrationView.setEmailValidation()) == true {
            print("email is valid")
        } else {
            print("email is not valid")
        }
    }
}
