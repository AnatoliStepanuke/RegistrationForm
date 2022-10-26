import UIKit

final class RegistrationUILabel: UILabel {
    // MARK: - Init
    init(
        height: CGFloat = 16,
        text: String,
        font: UIFont,
        textColor: UIColor
    ) {
        super.init(frame: .zero)
        setupConstraintsExploreUILabel(height: height)
        setupTextExploreUILabel(
            text: text,
            font: font,
            textColor: textColor
        )
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups
    private func setupConstraintsExploreUILabel(height: CGFloat) {
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }

    private func setupTextExploreUILabel(
        text: String,
        font: UIFont,
        textColor: UIColor
    ) {
        self.text = text
        self.font = font
        self.textColor = textColor
    }
}
