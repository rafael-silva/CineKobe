import UIKit

final class ModuleFactoryImp: MoviesUpcomingFactory {
    func makeMoviesUpComingOutput(delegate: MoviesUpcomingDelegate) -> UIViewController {
        let service = ServiceImp()
        let presenter = MoviesUpcomingPresenter(delegate: delegate, service: service)
        service.serviceOutput = presenter
        return MoviesUpcomingViewController(presenter: presenter)
    }
}
