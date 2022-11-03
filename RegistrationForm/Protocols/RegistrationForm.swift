import UIKit

protocol RegistrationForm: TextFieldFormChecking {
    // RegistrationUITextField
    var emailTextField: RegistrationUITextField { get }
    var passwordTextField: RegistrationUITextField { get }

    // RegistrationUILabel
    var emailLabel: RegistrationUILabel { get }
    var passwordLabel: RegistrationUILabel { get }

    // RegistrationUIButton
    var registrationButton: RegistrationUIButton { get }

    // RegistrationSeparatorView
    var emailSeparatorView: RegistrationSeparatorView { get }
    var passwordSeparatorView: RegistrationSeparatorView { get }

    // RegistrationUIStackView
    var registrationContainerStackView: RegistrationUIStackView { get }
}
