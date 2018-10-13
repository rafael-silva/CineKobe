import Foundation

extension Optional where Wrapped == String {
    var unwrapped: String {
        return self ?? ""
    }
}
