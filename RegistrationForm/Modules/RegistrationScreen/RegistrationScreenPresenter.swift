import Foundation

protocol RegistrationPresenter: AnyObject {

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
}
