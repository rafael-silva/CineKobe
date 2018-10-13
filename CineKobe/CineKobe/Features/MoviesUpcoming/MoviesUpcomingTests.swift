import Quick
import Nimble

@testable import CineKobe

class MoviesUpcomingTests: QuickSpec {
    
    override func spec() {
        
        var view: MoviesUpcomingViewSpy!
        var delegate: MoviesUpcomingDelegateSpy!
        var service: Service!
        var presenter: MoviesUpcomingPresenter!
        
        describe("MoviesUpcomingPresenter") {
            
            beforeEach {
                view = MoviesUpcomingViewSpy()
                delegate = MoviesUpcomingDelegateSpy()
                service = ServiceImp()
                presenter = MoviesUpcomingPresenter(delegate: delegate, service: service)
            }
            
            describe("quando a view for anexada") {
                
                beforeEach {
                    presenter.attachView(view: view)
                }
                
            }
        }
    }
}

private class MoviesUpcomingViewSpy: MoviesUpcomingView {
    func setList(with moviesUpcoming: MoviesUpcoming) {
    }
    
    func showError(with message: String) {
    }
}

private class MoviesUpcomingDelegateSpy: MoviesUpcomingDelegate {
    func moviesUpComingSelected(movie: MoviesUpcoming.Movie) {
    }
}

