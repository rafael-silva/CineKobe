import Foundation

struct MoviesUpcoming: Codable {
    let page: NSInteger?
    let total_pages: NSInteger?
    let results: [Movie]?
}

extension MoviesUpcoming {
    struct Movie: Codable {
        let title: String?
        let release_date: String?
        let poster_path: String?
        let overview: String?
        //let genre_id: [NSInteger]?
        
        var url: URL {
            return URL(string: "http://image.tmdb.org/t/p/w500" + poster_path.unwrapped)!
        }
    }
}
