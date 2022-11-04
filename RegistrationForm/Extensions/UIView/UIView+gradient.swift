import UIKit

extension UIButton {
    func addGradient(colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors.map { $0.cgColor }
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}
