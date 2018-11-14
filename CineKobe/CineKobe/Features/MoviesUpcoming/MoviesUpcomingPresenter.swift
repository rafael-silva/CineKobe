import UIKit

protocol MoviesUpcomingView: class {
    func setList(with moviesUpcoming: MoviesUpcoming)
    func showError(with message: String, title: String)
}

protocol MoviesUpcomingDelegate: class {
    func moviesUpComingSelected(movie: MoviesUpcoming.Movie)
}


private let strings = R.string.moviesUpcoming.self

class MoviesUpcomingPresenter {
    
    // MARK: Properties
    
    private weak var view: MoviesUpcomingView?
    private unowned var delegate: MoviesUpcomingDelegate
    private let service: Service
    private var movie: MoviesUpcoming.Movie?
    
    // MARK: Initialization
    
    init(delegate: MoviesUpcomingDelegate, service: Service) {
        self.delegate = delegate
        self.service = service
    }
    
    // MARK: Public API
    
    func attachView(view: MoviesUpcomingView) {
        self.view = view
        loadData()
    }
    
    func loadData(with page: Int = 1) {
        service.fetchMoviesUpcoming(with: page)
    }
    
    func movieDidSelected(movie: MoviesUpcoming.Movie) {
        delegate.moviesUpComingSelected(movie: movie)
    }
}

// MARK: - Service Protocol

extension MoviesUpcomingPresenter:  MoviesUpcomingServiceOutput {
    func serviceSucceeded(with moviesUpcoming: MoviesUpcoming) {
        view?.setList(with: moviesUpcoming)
    }
    
    func serviceError(with message: String) {
        view?.showError(with: strings.errorX(message), title: strings.errorTitle())
    }
}
