import UIKit

protocol RegistrationView: AnyObject {
    func setTargetRegistrationButton() -> RegistrationUIButton
    func setRegistrationValidation()
}

final class RegistrationScreenView: UIViewController {
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
    let emailTextField = RegistrationUITextField(
        placeholder: "введите электронную почту",
        autocapitalizationType: .none,
        keyboardType: .emailAddress)
    let passwordTextField = RegistrationUITextField(
        placeholder: "введите пароль",
        iconName: "view",
        autocapitalizationType: .words,
        keyboardType: .default)

    // UILabel
    let emailLabel = RegistrationUILabel(text: "Email")
    let passwordLabel = RegistrationUILabel(text: "Пароль")

    // UIButton
    let registrationButton = RegistrationUIButton()

    // UIView
    let emailSeparatorView = RegistrationSeparatorView()
    let passwordSeparatorView = RegistrationSeparatorView()

    // UIStackView
    let registrationContainerStackView = RegistrationUIStackView()

    // MARK: - Init
    init() { super.init(nibName: nil, bundle: nil) }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    // MARK: - Properties
    var registrationPresenter: RegistrationPresenter?

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
            registrationButton
        ])
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
            padding: .init(top: 100, left: 16, bottom: 0, right: 16)
        )
    }

    private func setupContainerStackView() {
        registrationContainerStackView.anchor(
            top: logoImageView.bottomAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            bottom: nil,
            padding: .init(top: 100, left: 25, bottom: 0, right: 25)
        )
        registrationContainerStackView.addArrangedSubviews([
            emailLabel, emailTextField, emailSeparatorView,
            passwordLabel, passwordTextField, passwordSeparatorView
        ])
    }

    private func setupRegistrationButton() {
        registrationButton.anchor(
            top: registrationContainerStackView.bottomAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            bottom: nil,
            padding: .init(top: 40, left: 25, bottom: 0, right: 25)
        )
        if let registrationPresenter = registrationPresenter {
            registrationPresenter.checkRegistrationForm()
        }
    }
}

extension RegistrationScreenView: RegistrationView, RegistrationForm {
    // MARK: - API
    func setTargetRegistrationButton() -> RegistrationUIButton { return registrationButton }

    func setRegistrationValidation() {
        registrationValidation(emailTextField: emailTextField, passwordTextField: passwordTextField)
    }
}
