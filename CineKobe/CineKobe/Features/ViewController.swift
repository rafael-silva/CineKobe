import UIKit

protocol ServiceOutput: class {
    func serviceSucceeded(with moviesUpcoming: MoviesUpcoming)
    func serviceError(with message: String)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let service = Service()
        service.fetchMoviesUpcoming(with: 1)
    }
}

extension ViewController: ServiceOutput {
    func serviceSucceeded(with moviesUpcoming: MoviesUpcoming) {}
    
    func serviceError(with message: String) {}
}

