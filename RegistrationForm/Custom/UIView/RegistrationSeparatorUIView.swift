import UIKit

final class RegistrationSeparatorView: UIView {
    // MARK: - Init
    init(color: UIColor) {
        super.init(frame: .zero)
        setupHeight()
        setupColor(color: color)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups
    private func setupHeight() {
        heightAnchor.constraint(equalToConstant: 1).isActive = true
    }

    private func setupColor(color: UIColor) {
        backgroundColor = color
    }
}
