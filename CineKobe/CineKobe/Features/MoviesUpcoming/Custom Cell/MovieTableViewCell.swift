import UIKit
import Kingfisher

class MovieTableViewCell: UITableViewCell {

    @IBOutlet private weak var imgThumb: UIImageView!
    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var lblSubTitle: UILabel!
    @IBOutlet private weak var lblDesc: UILabel!
    
    public func configureWith(_ movie: MoviesUpcoming.Movie?) {
        lblTitle.text = movie?.title
        lblSubTitle.text = "Release date: " + (movie?.release_date ?? "No description available")
        lblDesc.text = movie?.overview.unwrapped
        
        imgThumb.kf.setImage(with: movie?.url,
                             options: [.transition(.fade(0.3))])
    }
    
}
