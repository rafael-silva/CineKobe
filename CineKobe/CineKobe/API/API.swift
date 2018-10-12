
import Foundation
import Moya

public enum API {
    
    static private let publicKey = "c5850ed73901b8d268d0898a8a9d8bff"
    
    case upcoming(page: Int)
}

extension API: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3/movie")!
    }
    
    public var path: String {
        switch self {
        case .upcoming: return "/upcoming"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .upcoming: return .get
        }
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        switch self {
        case .upcoming(let page):
            return .requestParameters(
                parameters:[
                    "page": page,
                    "api_key": API.publicKey
                ], encoding: URLEncoding.default)
        }
    }
    
    public var headers: [String : String]? {
        return [
            "Content-Type": "application/json"
        ]
    }
    
    public var validationType: ValidationType {
        return .successCodes
    }
}


