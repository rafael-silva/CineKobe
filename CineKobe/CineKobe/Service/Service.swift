import Foundation

protocol MoviesUpcomingServiceOutput: class {
    func serviceSucceeded(with moviesUpcoming: MoviesUpcoming)
    func serviceError(with message: String)
}

protocol Service: class {
    var serviceOutput: MoviesUpcomingServiceOutput? {get set}
    func fetchMoviesUpcoming(with page: Int)
}

public class ServiceImp: Service {
    
    weak var serviceOutput: MoviesUpcomingServiceOutput?
    
    func fetchMoviesUpcoming(with page: Int) {
        DataManager.getMoviesUpcoming(with: page) { [weak self] output, error  in
            guard let output = output else {
                self?.serviceOutput?.serviceError(with: error ?? "")
                return
            }
            self?.serviceOutput?.serviceSucceeded(with: output)
        }
    }
}
