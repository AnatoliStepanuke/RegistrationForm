import UIKit

final class RegistrationViewController: UIViewController {
    // MARK: - Constants
    // UIImage
    private let backgroundImage = UIImage(named: "backgroundImage")
    private let logoImage = UIImage(named: "logoImage")

    // UIImageView
    private let backgroundImageView = UIImageView()
    private let logoImageView = UIImageView()

    // UITextField
    private let emailTextField = RegistrationUITextField(
        placeholder: "введите электронную почту",
        autocapitalizationType: .none,
        keyboardType: .emailAddress
    )
    private let passwordTextField = RegistrationUITextField(
        placeholder: "введите пароль",
        iconName: "view",
        autocapitalizationType: .words,
        keyboardType: .default
    )

    // UILabel
    private let emailLabel = RegistrationUILabel(text: "Email")
    private let passwordLabel = RegistrationUILabel(text: "Пароль")

    // UIButton
    private let registrationButton = GradientButton()

    // UIView
    private let emailSeparatorView = RegistrationSeparatorView(color: AppColors.whiteColor)
    private let passwordSeparatorView = RegistrationSeparatorView(color: AppColors.whiteColor)

    private let containerStackView = UIStackView()

    // MARK: - Properties
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupBackgroundImageView()
        setupLogoImageView()
        setupContainerStackView()
//        setupEmailLabel()
//        setupEmailTextField()
//        setupPasswordLabel()
//        setupPasswordTextField()
//        setupRegistrationButton()
    }

    // MARK: - Setups
    private func setupView() {
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(containerStackView)
//        view.addSubview(emailLabel)
//        view.addSubview(emailTextField)
//        view.addSubview(emailSeparatorView)
//        view.addSubview(passwordLabel)
//        view.addSubview(passwordTextField)
//        view.addSubview(passwordSeparatorView)
//        view.addSubview(registrationButton)
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
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil,
            padding: .init(top: 100, left: 16, bottom: 0, right: 16)
        )
    }

    private func setupContainerStackView() {
        containerStackView.axis = .horizontal
        containerStackView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        containerStackView.backgroundColor = .green
        containerStackView.anchor(top: logoImageView.bottomAnchor,
                                  leading: view.leadingAnchor,
                                  trailing: view.trailingAnchor,
                                  bottom: nil,
                                  padding: .init(top: 100, left: 25, bottom: 0, right: 25))
    }

//    private func setupEmailLabel() {
//        emailLabel.anchor(
//            top: logoImageView.bottomAnchor,
//            leading: view.leadingAnchor,
//            trailing: view.trailingAnchor,
//            bottom: nil,
//            padding: .init(top: 100, left: 25, bottom: 0, right: 25)
//        )
//    }
//
//    private func setupEmailTextField() {
//        emailTextField.anchor(
//            top: emailLabel.bottomAnchor,
//            leading: view.leadingAnchor,
//            trailing: view.trailingAnchor,
//            bottom: nil,
//            padding: .init(top: 15, left: 25, bottom: 0, right: 25)
//        )
//        emailSeparatorView.anchor(
//            top: emailTextField.bottomAnchor,
//            leading: emailTextField.leadingAnchor,
//            trailing: emailTextField.trailingAnchor,
//            bottom: nil,
//            padding: .init(top: 20, left: 0, bottom: 0, right: 0)
//        )
//    }
//
//    private func setupPasswordLabel() {
//        passwordLabel.anchor(
//            top: emailSeparatorView.bottomAnchor,
//            leading: view.leadingAnchor,
//            trailing: view.trailingAnchor,
//            bottom: nil,
//            padding: .init(top: 25, left: 25, bottom: 0, right: 25)
//        )
//    }
//
//    private func setupPasswordTextField() {
//        passwordTextField.anchor(
//            top: passwordLabel.bottomAnchor,
//            leading: view.leadingAnchor,
//            trailing: view.trailingAnchor,
//            bottom: nil,
//            padding: .init(top: 15, left: 25, bottom: 0, right: 25)
//        )
//        passwordSeparatorView.anchor(
//            top: passwordTextField.bottomAnchor,
//            leading: passwordTextField.leadingAnchor,
//            trailing: passwordTextField.trailingAnchor,
//            bottom: nil,
//            padding: .init(top: 20, left: 0, bottom: 0, right: 0)
//        )
//    }
//
//    private func setupRegistrationButton() {
//        registrationButton.anchor(
//            top: passwordSeparatorView.bottomAnchor,
//            leading: view.leadingAnchor,
//            trailing: view.trailingAnchor,
//            bottom: nil,
//            padding: .init(top: 40, left: 25, bottom: 0, right: 25)
//        )
//    }
}
