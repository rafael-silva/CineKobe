import UIKit

protocol MoviesUpcomingFactory {
    func makeMoviesUpComingOutput(delegate: MoviesUpcomingDelegate)  -> UIViewController
}
