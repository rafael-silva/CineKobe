import UIKit

final class CoordinatorFactoryImp: CoordinatorFactory {
    
    func makeMoviesUpcomingCoordinator(router: Router) -> Coordinator  {
        let coordinator = MoviesUpcomingCoordinator(router: router, factory: ModuleFactoryImp())
        return coordinator
    }
}
