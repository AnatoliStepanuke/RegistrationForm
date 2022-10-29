import UIKit

final class RegistrationUIButton: UIButton {
    // MARK: - Init
    override func layoutSubviews() {
        super.layoutSubviews()
        setupHeight()
        setupCornerRadius()
        setupTitle()
        setupColors()
    }

    // MARK: - Setups
    private func setupHeight() { heightAnchor.constraint(equalToConstant: 50).isActive = true }

    private func setupCornerRadius() {
        layer.cornerRadius = 6
        clipsToBounds = true
    }

    private func setupTitle() {
        setTitle("Регистрация", for: .normal)
        titleLabel?.font = AppFonts.HelveticaNeueCyrMedium16 ?? .systemFont(ofSize: 16, weight: .medium)
    }

    private func setupColors() {
        addGradient(colors: [AppColors.turquoiseColor, AppColors.greenBlueColor],
                    startPoint: CGPoint(x: 0, y: 0.5),
                    endPoint: CGPoint(x: 1, y: 0.5)
        ).frame = bounds
        tintColor = AppColors.whiteColor
    }
}
