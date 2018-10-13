import UIKit

final class ModuleFactoryImp: MoviesUpcomingFactory {
    
    func makeMovieDetailUpComingOutput(movie: MoviesUpcoming.Movie) -> UIViewController {
        let presenter = MovieDetailPresenter(movie: movie)
        return MovieDetailViewController(presenter: presenter)
    }

    func makeMoviesUpComingOutput(delegate: MoviesUpcomingDelegate) -> UIViewController {
        let service = ServiceImp()
        let presenter = MoviesUpcomingPresenter(delegate: delegate, service: service)
        service.serviceOutput = presenter
        return MoviesUpcomingViewController(presenter: presenter)
    }
}
