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
    }
}
