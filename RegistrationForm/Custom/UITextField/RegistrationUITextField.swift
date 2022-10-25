import UIKit

final class RegistrationUITextField: UITextField {
    // MARK: - Init
    init(
        height: CGFloat = 16,
        font: UIFont,
        placeholder: String,
        textColor: UIColor,
        autocapitalizationType: UITextAutocapitalizationType,
        keyboardType: UIKeyboardType
    ) {
        super.init(frame: .zero)
        setupHeight(height: height)
        setupText(font: font, placeholder: placeholder, textColor: textColor)
//        setupIcon(
//            iconName: iconName,
//            iconPositionX: iconPositionX,
//            iconPositionY: iconPositionY,
//            iconWidth: iconWidth,
//            iconHeight: iconHeight,
//            viewPositionX: viewPositionX,
//            viewPositionY: viewPositionY,
//            viewWidth: viewWidth,
//            viewHeight: viewHeight
//        )
        setupKeyboardType(
            autocapitalizationType: autocapitalizationType,
            keyboardType: keyboardType
        )
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: - Setups
    private func setupHeight(height: CGFloat) {
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }

    private func setupText(font: UIFont, placeholder: String, textColor: UIColor) {
        self.font = font
        attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray4]
        )
        self.textColor = textColor
    }

//    private func setupIcon(
//        iconName: String?,
//        iconPositionX: Int? = 0,
//        iconPositionY: Int? = 0,
//        iconWidth: Int?,
//        iconHeight: Int?,
//        viewPositionX: Int? = 0,
//        viewPositionY: Int? = 0,
//        viewWidth: Int?,
//        viewHeight: Int?
//    ) {
//        let imageView = UIImageView(frame: CGRect(
//            x: iconPositionX ?? 0,
//            y: iconPositionY ?? 0,
//            width: iconWidth ?? 0,
//            height: iconHeight ?? 0
//        ))
//        let iconImage = UIImage(named: iconName ?? "")
//        let view = UIView(frame: CGRect(
//            x: viewPositionX ?? 0,
//            y: viewPositionY ?? 0,
//            width: viewWidth ?? 0,
//            height: viewHeight ?? 0
//        ))
//        imageView.image = iconImage
//        view.addSubview(imageView)
//        leftView = view
//        leftViewMode = .always
//    }

    private func setupKeyboardType(
        autocapitalizationType: UITextAutocapitalizationType?,
        keyboardType: UIKeyboardType?
    ) {
        self.keyboardType = keyboardType ?? .default
        self.autocapitalizationType = autocapitalizationType ?? .none
        autocorrectionType = .no
        returnKeyType = UIReturnKeyType.continue
    }
}
