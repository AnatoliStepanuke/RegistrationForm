import UIKit

final class RegistrationUIStackView: UIStackView {
    // MARK: - Init
    init() {
        super.init(frame: .zero)
        setupHeight()
        setupDistribution()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups
    private func setupHeight() { heightAnchor.constraint(equalToConstant: 165).isActive = true }

    private func setupDistribution() {
        axis = .vertical
        alignment = .fill
        distribution = .equalSpacing
    }
}
