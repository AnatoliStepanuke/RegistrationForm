import UIKit

final class RegistrationUIStackView: UIStackView {
    // MARK: - Init
    override func layoutSubviews() {
        super.layoutSubviews()
        setupHeight()
        setupDistribution()
    }

    // MARK: - Setups
    private func setupHeight() { heightAnchor.constraint(equalToConstant: 165).isActive = true }

    private func setupDistribution() {
        axis = .vertical
        alignment = .fill
        distribution = .equalSpacing
    }
}
