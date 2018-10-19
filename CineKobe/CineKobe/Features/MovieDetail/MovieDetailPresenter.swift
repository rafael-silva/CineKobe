import UIKit

protocol MovieDetailView: class {
    func setBackgroundImage(with imageURL: URL)
    func setBackgroundHeaderImage(with imageURL: URL)
    func setIlustration(with imageURL: URL)
    func setTitle(_ text: String)
    func setOverview(_  text: String, overview: String)
}

private let strings = R.string.movieDetail.self

class MovieDetailPresenter {
    
    // MARK: Properties
    
    private weak var view: MovieDetailView?
    private var movie: MoviesUpcoming.Movie
    
    // MARK: Initialization
    
    init(movie: MoviesUpcoming.Movie) {
        self.movie = movie
    }
    
    // MARK: Public API
    
    func attachView(view: MovieDetailView) {
        self.view = view
        setup()
    }
    
    func setup() {
        guard let title = movie.title, let overview =  movie.overview else { return }
        view?.setBackgroundImage(with: movie.url)
        view?.setBackgroundHeaderImage(with:movie.url)
        view?.setIlustration(with: movie.url)
        view?.setTitle(title)
        view?.setOverview(strings.overview(), overview: overview)
    }
}
