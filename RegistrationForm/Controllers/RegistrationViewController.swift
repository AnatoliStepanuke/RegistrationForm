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
    private let emailTextField = UITextField()

    // UILabel
    private let emailLabel = UILabel()

    // MARK: - Properties
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupBackgroundImageView()
        setupLogoImageView()
        setupEmailLabel()
        setupEmailTextField()
    }

    // MARK: - Setups
    private func setupView() {
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
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
        emailLabel.font = UIFont(name: "HelveticaNeueCyr-Roman", size: 14)
        emailLabel.text = "Email"
        emailLabel.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
    }

    private func setupEmailTextField() {
        emailTextField.anchor(
            top: emailLabel.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil,
            padding: .init(top: 12, left: 20, bottom: 0, right: 20)
        )
        emailTextField.heightAnchor.constraint(equalToConstant: 16).isActive = true
        emailTextField.font = UIFont(name: "HelveticaNeueCyr-Medium", size: 14)
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "введите электронную почту",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray4]
        )
        emailTextField.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
    }
}
