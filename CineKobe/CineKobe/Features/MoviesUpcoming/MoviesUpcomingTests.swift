import Quick
import Nimble
// FIXME: Change Target Membership to AgipagTests❗️
@testable import Agipag

// swiftlint:disable function_body_length
class MoviesUpcomingTests: QuickSpec {
    
    override func spec() {
 
        var view: MoviesUpcomingViewSpy!
        var delegate: MoviesUpcomingDelegateSpy!
        var presenter: MoviesUpcomingPresenter! 
        
        describe("MoviesUpcomingPresenter") {
            
            beforeEach {
                view = MoviesUpcomingViewSpy()
                delegate = MoviesUpcomingDelegateSpy()
                presenter = MoviesUpcomingPresenter(delegate: delegate)
            }
            
            describe("quando a view for anexada") {
                
                beforeEach {
                    presenter.attachView(view: view)
                }
                
            }
        }
    }
}

private class MoviesUpcomingViewSpy: MoviesUpcomingView {}

private class MoviesUpcomingDelegateSpy: MoviesUpcomingDelegate {}
