import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet private weak var imgThumb: UIImageView!
    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var lblSubTitle: UILabel!
    @IBOutlet private weak var lblDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    public func configureWith(_ movie: MoviesUpcoming.Movie) {
        lblTitle.text = movie.title
        lblSubTitle.text = movie.release_date ?? "No description available"
        
//        imgThumb.kf.setImage(with: movie.url,
//                             options: [.transition(.fade(0.3))])
    }
    
}
