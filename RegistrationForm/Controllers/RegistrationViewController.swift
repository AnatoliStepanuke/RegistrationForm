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
        font: AppFonts.HelveticaNeueCyrMedium ?? .systemFont(ofSize: 16, weight: .medium),
        placeholder: "введите электронную почту",
        textColor: AppColors.whiteColor,
        autocapitalizationType: .none,
        keyboardType: .emailAddress
    )
    private let passwordTextField = RegistrationUITextField(
        font: AppFonts.HelveticaNeueCyrMedium ?? .systemFont(ofSize: 16, weight: .medium),
        placeholder: "введите пароль",
        textColor: AppColors.whiteColor,
        iconName: "view",
        autocapitalizationType: .words,
        keyboardType: .default
    )

    // UILabel
    private let emailLabel = UILabel()
    private let passwordLabel = UILabel()

    // MARK: - Properties
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupBackgroundImageView()
        setupLogoImageView()
        setupEmailLabel()
        setupEmailTextField()
        setupPasswordLabel()
        setupPasswordTextField()
    }

    // MARK: - Setups
    private func setupView() {
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
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

    private func setupEmailLabel() {
        emailLabel.anchor(
            top: logoImageView.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil,
            padding: .init(top: 100, left: 20, bottom: 0, right: 20)
        )
        emailLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        emailLabel.font = AppFonts.HelveticaNeueCyrRoman
        emailLabel.text = "Email"
        emailLabel.textColor = AppColors.whiteColor
    }

    private func setupEmailTextField() {
        emailTextField.anchor(
            top: emailLabel.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil,
            padding: .init(top: 12, left: 20, bottom: 0, right: 20)
        )
    }

    private func setupPasswordLabel() {
        passwordLabel.anchor(
            top: emailTextField.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil,
            padding: .init(top: 30, left: 20, bottom: 0, right: 20)
        )
        passwordLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        passwordLabel.font = AppFonts.HelveticaNeueCyrRoman
        passwordLabel.text = "Пароль"
        passwordLabel.textColor = AppColors.whiteColor
    }

    private func setupPasswordTextField() {
        passwordTextField.anchor(
            top: passwordLabel.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil,
            padding: .init(top: 12, left: 20, bottom: 0, right: 20)
        )
    }
}
