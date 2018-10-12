import UIKit

protocol MoviesUpcomingView: class {
    func setList(with moviesUpcoming: MoviesUpcoming)
    func showError(with message: String)
}

protocol MoviesUpcomingDelegate: class {
    // Delegate methods
}

protocol MoviesUpcomingServiceOutput: class {
    func serviceSucceeded(with moviesUpcoming: MoviesUpcoming)
    func serviceError(with message: String)
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
    }
    
}

extension MoviesUpcomingPresenter: MoviesUpcomingServiceOutput {
    func serviceSucceeded(with moviesUpcoming: MoviesUpcoming) {
        view?.setList(with: moviesUpcoming)
    }
    
    func serviceError(with message: String) {  }
    
}
