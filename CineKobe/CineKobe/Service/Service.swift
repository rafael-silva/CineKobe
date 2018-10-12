import Foundation

protocol ServiceDataSource: class {
    func fetchMoviesUpcoming(with page: Int)
}

public class Service: ServiceDataSource {
    
    weak var serviceOutput: ServiceOutput?
    
    func fetchMoviesUpcoming(with page: Int) {
        DataManager.getMoviesUpcoming(with: page) { [weak self] output, error  in
            guard let `self` =  self else { return }
            guard let output = output else {
                self.serviceOutput?.serviceError(with: error ?? "")
                return
            }
            self.serviceOutput?.serviceSucceeded(with: output)
        }
    }
}
