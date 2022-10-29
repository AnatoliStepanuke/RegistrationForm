import UIKit

final class RegistrationUILabel: UILabel {
    // MARK: - Init
    init(
        height: CGFloat = 16,
        text: String,
        font: UIFont = AppFonts.HelveticaNeueCyrRoman ?? .systemFont(ofSize: 14, weight: .regular),
        textColor: UIColor = AppColors.whiteColor
    ) {
        super.init(frame: .zero)
        setupConstraints(height: height)
        setupText(
            text: text,
            font: font,
            textColor: textColor)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    // MARK: - Setups
    private func setupConstraints(height: CGFloat) { heightAnchor.constraint(equalToConstant: height).isActive = true }

    private func setupText(
        text: String,
        font: UIFont,
        textColor: UIColor
    ) {
        self.text = text
        self.font = font
        self.textColor = textColor
    }
}
