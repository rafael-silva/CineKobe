import UIKit

protocol MoviesUpcomingFactory {
    func makeMoviesUpComingOutput(delegate: MoviesUpcomingDelegate)  -> UIViewController
    func makeMovieDetailUpComingOutput(movie: MoviesUpcoming.Movie)  -> UIViewController
}
