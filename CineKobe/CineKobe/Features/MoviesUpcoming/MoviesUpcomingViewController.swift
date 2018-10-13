import UIKit

class MoviesUpcomingViewController: UIViewController {
    
    // MARK: Properties
    
    private let presenter: MoviesUpcomingPresenter
    
    // MARK: Initialization
    
    init(presenter: MoviesUpcomingPresenter) {
        self.presenter = presenter
        super.init(nibName: MoviesUpcomingViewController.responsiveNibName(), bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { return nil }
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment this only after have implemented the presenter with 100% of CodeCoverage
         presenter.attachView(view: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

extension MoviesUpcomingViewController: MoviesUpcomingView {
    func setList(with moviesUpcoming: MoviesUpcoming) {
        //TODOs:
    }
    
    func showError(with message: String) {
         //TODOs:
    }
}
