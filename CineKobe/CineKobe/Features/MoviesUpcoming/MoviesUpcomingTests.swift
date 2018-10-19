import Quick
import Nimble

@testable import CineKobe

let mockMoviesUpcoming = MoviesUpcoming(page: 1,
                                         total_pages: 15,
                                         results:  [MoviesUpcoming.Movie(title: "test", release_date: "11/02/1990", poster_path: nil, overview: nil),
                                                    MoviesUpcoming.Movie(title: "test2", release_date: "11/02/1980", poster_path: nil, overview: nil)]
)

class MoviesUpcomingTests: QuickSpec {
    
    override func spec() {
        
        var view: MoviesUpcomingViewSpy!
        var delegate: MoviesUpcomingDelegateSpy!
        var service: MoviesUpcomingServiceSpy!
        var presenter: MoviesUpcomingPresenter!
        
        describe("MoviesUpcomingPresenter") {
            
            func setup() {
                view = MoviesUpcomingViewSpy()
                delegate = MoviesUpcomingDelegateSpy()
                service = MoviesUpcomingServiceSpy()
                presenter = MoviesUpcomingPresenter(delegate: delegate, service: service)
                service.serviceOutput = presenter
                presenter.attachView(view: view)
            }
            
            describe("when view loading") {
                
                beforeEach {
                    setup()
                    presenter.loadData()
                    service.serviceOutput?.serviceSucceeded(with: mockMoviesUpcoming)
                }
                
                it("it should load list") {
                    expect(view.setListCalled) == true
                }
                
                it("not should show error") {
                    expect(view.showErrorCalled).to(beNil())
                }
                
            }
            
            describe("when user selected any movie") {}
            
            describe("MoviesUpcomingService") {
                
                beforeEach {
                    setup()
                }
                
                describe("when a requisition movies have successful") {
                    
                    beforeEach {
                        service.serviceOutput?.serviceSucceeded(with: mockMoviesUpcoming)
                    }
                    
                    it("então não deverá requisitar a lista de filmes atuais") {
                        expect(service.fetchMoviesUpcomingCalled).to(beTrue())
                    }
                    
                    it("então deverá anexar anexar") {
                        expect(view?.setListCalled).to(beTrue())
                    }
                }
                
                describe("quando busca por localização do usuário retornar com erro") {
                    
                    beforeEach {
                        service.serviceOutput?.serviceError(with: "error")
                    }
                    
                    it("então deverá remover spinner") {
                        expect(view?.showErrorCalled) == true
                    }
                }
            }
        }
    }
}

private class MoviesUpcomingViewSpy: MoviesUpcomingView {
    var setListCalled: Bool?
    var showErrorCalled: Bool?
    
    func setList(with moviesUpcoming: MoviesUpcoming) {
        setListCalled = true
    }
    
    func showError(with message: String, title: String) {
        showErrorCalled = true
    }
    
}

private class MoviesUpcomingDelegateSpy: MoviesUpcomingDelegate {
    func moviesUpComingSelected(movie: MoviesUpcoming.Movie) {
    }
}

fileprivate class MoviesUpcomingServiceSpy: Service {
    
    var serviceOutput: MoviesUpcomingServiceOutput?
    var fetchMoviesUpcomingCalled: Bool?
    
    func fetchMoviesUpcoming(with page: Int) {
        fetchMoviesUpcomingCalled = true
    }
}

