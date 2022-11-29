import UIKit

protocol RegistrationView: AnyObject {

}

final class RegistrationScreenView: UIViewController {
    // MARK: - Constants
    // MARK: - Init
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Properties
    var registrationPresenter: RegistrationPresenter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }

    // MARK: - Setups

}

extension RegistrationScreenView: RegistrationView {
    // MARK: - API

}
