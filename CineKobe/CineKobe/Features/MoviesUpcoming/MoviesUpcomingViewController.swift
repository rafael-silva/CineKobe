import UIKit
import Foundation

class MoviesUpcomingViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    private let presenter: MoviesUpcomingPresenter
    private var moviesUpcoming: MoviesUpcoming?
    
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
        tableView.register(R.nib.movieTableViewCell)
        presenter.attachView(view: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

 //MARK: - UITableView Delegate & Data Source

extension MoviesUpcomingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.movieCell, for: indexPath)!
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesUpcoming?.results?.count ?? 0
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        guard let movie = moviesUpcoming?.results?[indexPath.row] else { return }
        presenter.movieDidSelected(movie: movie)
    }
}



extension MoviesUpcomingViewController: MoviesUpcomingView {
    func setList(with moviesUpcoming: MoviesUpcoming) {
        self.moviesUpcoming = moviesUpcoming
        self.tableView.reloadData()
    }
    
    func showError(with message: String) {
         //TODOs:
    }
}
