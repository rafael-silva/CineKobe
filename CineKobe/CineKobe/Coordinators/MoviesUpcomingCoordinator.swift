final class MoviesUpcomingCoordinator: BaseCoordinator {
    
    private let factory: MoviesUpcomingFactory
    private let router: Router
    
    init(router: Router, factory: MoviesUpcomingFactory) {
        self.factory = factory
        self.router = router
    }
    
    override func start() {
        showMoviesUpcoming()
    }
    
    //MARK: Run current flow's controllers
    
    private func showMoviesUpcoming() {
        let moviesUpcomingOutput = factory.makeMoviesUpComingOutput(delegate: self)
        router.setRootModule(moviesUpcomingOutput)
    }
    
    private func showMovieDetail(_ movie: MoviesUpcoming.Movie) {
        let movieDetailOutput =  factory.makeMovieDetailUpComingOutput(movie: movie)
        router.push(movieDetailOutput)

    }
}

extension MoviesUpcomingCoordinator: MoviesUpcomingDelegate {
    func moviesUpComingSelected(movie: MoviesUpcoming.Movie) {
        showMovieDetail(movie)
    }
}
