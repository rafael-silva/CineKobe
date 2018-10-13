import Foundation

extension Date {
    
    var isoDateShort: String {
        return stringDate(with: "YYYY")
    }
    
    private func stringDate(with format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.timeZone = TimeZone(abbreviation: "BRST")
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
