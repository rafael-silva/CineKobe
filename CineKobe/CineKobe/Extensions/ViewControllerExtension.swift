import UIKit

extension UIViewController {
    static func responsiveNibName() -> String {
        let name = String(describing: self)
        let name_SE = "\(name)_SE"
        let name_X = "\(name)_X"
        
        if UIScreen.width == .reduced && Bundle.main.path(forResource: name_SE, ofType: "nib") != nil {
            return name_SE
        }
        
        if UIScreen.isIPhoneX && Bundle.main.path(forResource: name_X, ofType: "nib") != nil {
            return name_X
        }
        
        return name
    }
}
