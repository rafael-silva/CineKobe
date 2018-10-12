import UIKit

extension UIScreen {
    
    enum ScreenWidth {
        case reduced
        case regular
        case extended
    }
    
    static var width: ScreenWidth {
        if self.main.bounds.width <= 320 {
            // iPhone 5S and earlier
            return .reduced
        } else if self.main.bounds.width < 414 {
            // iPhone 6, 6S and 7, X
            return .regular
        }
        // iPhone Plus
        return .extended
    }
    
    static var screenFactor: CGFloat {
        switch UIScreen.width {
        case .reduced:
            return 0.77
        case .regular:
            return 0.9
        case .extended:
            return 1.0
        }
    }
    
    static var isReduced: Bool {
        return UIScreen.width == .reduced
    }
    
    static var isIPhoneX: Bool {
        if width == .regular && self.main.bounds.height > 667 {
            return true
        } else {
            return false
        }
    }
}
