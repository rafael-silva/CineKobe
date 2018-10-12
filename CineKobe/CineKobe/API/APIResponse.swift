import Foundation

struct APIResponse<T: Codable>: Codable {
    let data: APIResults<T>
}

struct APIResults<T: Codable>: Codable {
    let results: [T]
}

struct APIResult<T: Codable>: Codable {
    let data: T
}
