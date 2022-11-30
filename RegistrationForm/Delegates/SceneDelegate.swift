import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // MARK: - Properties
    var window: UIWindow?

    // MARK: - Constants
    private let navigationController = UINavigationController()
    private let view = RegistrationScreenView()

    // MARK: - UIScene
    func scene(
        _ scene: UIScene, willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let presenter = RegistrationScreenPresenter(registrationView: view)
        view.registrationPresenter = presenter
        navigationController.pushViewController(view, animated: true)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
