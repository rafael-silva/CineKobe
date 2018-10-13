import UIKit

protocol MoviesUpcomingView: class {
    func setList(with moviesUpcoming: MoviesUpcoming)
    func showError(with message: String)
}

protocol MoviesUpcomingDelegate: class {
    func moviesUpComingSelected(movie: MoviesUpcoming.Movie)
}

class MoviesUpcomingPresenter {
    
    // MARK: Properties
    
    private weak var view: MoviesUpcomingView?
    private unowned var delegate: MoviesUpcomingDelegate
    private let service: Service
    
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
    
}

// MARK: - Service Protocol

extension MoviesUpcomingPresenter:  MoviesUpcomingServiceOutput {
    func serviceSucceeded(with moviesUpcoming: MoviesUpcoming) {
          //TODOs:
    }
    
    func serviceError(with message: String) {
          //TODOs:
    }
}
