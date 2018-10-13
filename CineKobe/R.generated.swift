//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 0 images.
  struct image {
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 3 nibs.
  struct nib {
    /// Nib `MovieTableViewCell`.
    static let movieTableViewCell = _R.nib._MovieTableViewCell()
    /// Nib `MoviesUpcomingViewController_SE`.
    static let moviesUpcomingViewController_SE = _R.nib._MoviesUpcomingViewController_SE()
    /// Nib `MoviesUpcomingViewController`.
    static let moviesUpcomingViewController = _R.nib._MoviesUpcomingViewController()
    
    /// `UINib(name: "MovieTableViewCell", in: bundle)`
    static func movieTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.movieTableViewCell)
    }
    
    /// `UINib(name: "MoviesUpcomingViewController", in: bundle)`
    static func moviesUpcomingViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.moviesUpcomingViewController)
    }
    
    /// `UINib(name: "MoviesUpcomingViewController_SE", in: bundle)`
    static func moviesUpcomingViewController_SE(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.moviesUpcomingViewController_SE)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `movieCell`.
    static let movieCell: Rswift.ReuseIdentifier<MovieTableViewCell> = Rswift.ReuseIdentifier(identifier: "movieCell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.moviesUpcoming` struct is generated, and contains static references to 0 localization keys.
    struct moviesUpcoming {
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      // There are no resources to validate
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R {
  struct nib {
    struct _MovieTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = MovieTableViewCell
      
      let bundle = R.hostingBundle
      let identifier = "movieCell"
      let name = "MovieTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MovieTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MovieTableViewCell
      }
      
      fileprivate init() {}
    }
    
    struct _MoviesUpcomingViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MoviesUpcomingViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      fileprivate init() {}
    }
    
    struct _MoviesUpcomingViewController_SE: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MoviesUpcomingViewController_SE"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard {
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = ViewController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
