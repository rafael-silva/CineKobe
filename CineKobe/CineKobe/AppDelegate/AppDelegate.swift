import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private var custonNavigationController: UINavigationController {
        let navigationController = UINavigationController()
        navigationController.navigationBar.barTintColor = UIColor.black
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.shadowImage = UIImage()
        return navigationController
    }
    var rootController: UINavigationController {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        window?.rootViewController = custonNavigationController
        
        return self.window!.rootViewController as! UINavigationController
    }
    
    private lazy var appCoordinator: Coordinator = self.makeCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        appCoordinator.start()

        return true
    }
    
    private func makeCoordinator() -> Coordinator {
        return AppCoordinator(
            router: RouterImp(rootController: rootController),
            coordinatorFactory: CoordinatorFactoryImp()
        )
    }
}

