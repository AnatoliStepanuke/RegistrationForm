import UIKit

final class RegistrationViewController: UIViewController, RegistrationForm {
    // MARK: - Constants
    // MARK: Private
    // UIImage
    private let backgroundImage = UIImage(named: "backgroundImage")
    private let logoImage = UIImage(named: "logoImage")

    // UIImageView
    private let backgroundImageView = UIImageView()
    private let logoImageView = UIImageView()

    // MARK: Internal
    // UITextField
    internal let emailTextField = RegistrationUITextField(
        placeholder: "введите электронную почту",
        autocapitalizationType: .none,
        keyboardType: .emailAddress)
    internal let passwordTextField = RegistrationUITextField(
        placeholder: "введите пароль",
        iconName: "view",
        autocapitalizationType: .words,
        keyboardType: .default)

    // UILabel
    internal let emailLabel = RegistrationUILabel(text: "Email")
    internal let passwordLabel = RegistrationUILabel(text: "Пароль")

    // UIButton
    internal let registrationButton = RegistrationUIButton()

    // UIView
    internal let emailSeparatorView = RegistrationSeparatorView()
    internal let passwordSeparatorView = RegistrationSeparatorView()

    // UIStackView
    internal let registrationContainerStackView = RegistrationUIStackView()

    // MARK: - Properties
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupBackgroundImageView()
        setupLogoImageView()
        setupContainerStackView()
        setupRegistrationButton()
    }

    // MARK: - Setups
    private func setupView() {
        view.addSubviews([
            backgroundImageView,
            logoImageView,
            registrationContainerStackView,
            emailLabel,
            emailTextField,
            emailSeparatorView,
            passwordLabel,
            passwordTextField,
            passwordSeparatorView,
            registrationButton])
    }

    private func setupBackgroundImageView() {
        backgroundImageView.image = backgroundImage
        backgroundImageView.fillEntireView()
    }

    private func setupLogoImageView() {
        logoImageView.image = logoImage
        logoImageView.contentMode = .center
        logoImageView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            bottom: nil,
            padding: .init(top: 100, left: 16, bottom: 0, right: 16))
    }

    private func setupContainerStackView() {
        registrationContainerStackView.anchor(
            top: logoImageView.bottomAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            bottom: nil,
            padding: .init(top: 100, left: 25, bottom: 0, right: 25))
        registrationContainerStackView.addArrangedSubviews([
            emailLabel, emailTextField, emailSeparatorView,
            passwordLabel, passwordTextField, passwordSeparatorView])
    }

    private func setupRegistrationButton() {
        registrationButton.anchor(
            top: registrationContainerStackView.bottomAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            bottom: nil,
            padding: .init(top: 40, left: 25, bottom: 0, right: 25))
        registrationButton.addTarget(self, action: #selector(registrationButtonDidTapped), for: .touchUpInside)
    }

    // MARK: - Actions
    // MARK: Objc Methods
    @objc private func registrationButtonDidTapped() {
        registrationValidation(emailTextField: emailTextField, passwordTextField: passwordTextField)
    }
}

