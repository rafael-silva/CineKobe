import UIKit
import Foundation

class AppCoordinator: BaseCoordinator {
    
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        runComicsFlow()
    }
    
    private func runComicsFlow() {
        let coordinator = coordinatorFactory.makeMoviesUpcomingCoordinator(router: router)
        self.addChildCoordinator(coordinator)
        coordinator.start()
    }
}   
