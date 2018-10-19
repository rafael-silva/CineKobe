import UIKit
import Kingfisher

class MovieDetailViewController: UIViewController {
   
    @IBOutlet weak var imageHeaderDetail: UIImageView!
    @IBOutlet weak var imageMovieIlustration: UIImageView!
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblOverview: UILabel!
    
    
    // MARK: Properties
    
    private let presenter: MovieDetailPresenter
    
    // MARK: Initialization
    
    init(presenter: MovieDetailPresenter) {
        self.presenter = presenter
        super.init(nibName: MovieDetailViewController.responsiveNibName(), bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { return nil }
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self)
    }
}

extension MovieDetailViewController: MovieDetailView {
    
    func setBackgroundImage(with imageURL: URL) {
       imageBackground.kf.setImage(with: imageURL)
    }
    
    func setBackgroundHeaderImage(with imageURL: URL) {
        imageHeaderDetail.kf.setImage(with: imageURL)
    }
    
    func setIlustration(with imageURL: URL) {
        imageMovieIlustration.kf.setImage(with: imageURL)
    }
    
    func setTitle(_ text: String) {
        lblTitle.text = text
    }
    
    func setOverview(_ text: String, overview: String) {
        lblOverview.text = overview
    }
}
