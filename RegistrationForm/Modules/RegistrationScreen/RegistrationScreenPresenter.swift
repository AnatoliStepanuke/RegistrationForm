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

    // MARK: - Actions
    // MARK: Objc Methods
    @objc private func registrationButtonDidTapped() { registrationView.setRegistrationValidation() }
}
