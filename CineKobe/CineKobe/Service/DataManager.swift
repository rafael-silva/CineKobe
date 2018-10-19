import Foundation
import Moya

public class DataManager {
    let provider = MoyaProvider<API>()
    
    static func getMoviesUpcoming(with page: Int, completion: @escaping (MoviesUpcoming?, String?) -> Void) {
        _ = MoyaProvider<API>().request(.upcoming(page: page)) { output in
            switch output {
            case let .success(response):
                do {
                    completion(try JSONDecoder().decode(MoviesUpcoming.self, from: response.data), nil)
                } catch (let error) {
                    completion(nil, error.localizedDescription)
                }
            case let .failure(error): completion(nil, error.localizedDescription)
            }
        }
    }
}


