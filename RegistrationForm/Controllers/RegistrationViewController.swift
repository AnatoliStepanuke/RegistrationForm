import UIKit

final class RegistrationViewController: UIViewController {
    // MARK: - Constants
    private let backgroundImage = UIImage(named: "backgroundImage")
    private let balinaSoftImage = UIImage(named: "logoImage")

    // MARK: - Properties
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(image: backgroundImage)
        let balinaSoftImageView = UIImageView(image: balinaSoftImage)
        view.addSubview(backgroundImageView)
        view.addSubview(balinaSoftImageView)
        backgroundImageView.anchor(
            top: view.topAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            bottom: view.bottomAnchor
        )
        balinaSoftImageView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            bottom: nil,
            padding: .init(top: 100, left: 16, bottom: 0, right: 16)
        )

        balinaSoftImageView.contentMode = .center
    }
}
