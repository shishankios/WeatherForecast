//
//  Theme.swift
//  collectionview
//
//  Created by Shiva on 09/18/21.
//

import Foundation
import UIKit

struct Theme {
    
    struct Colors {
        static let Purple = UIColor(red: 90/255.0, green: 83/255.0, blue: 196/255.0, alpha: 1.0)
        static let White = UIColor.white
        static let Black = UIColor.black
        static let Grey = UIColor(red: 216/255.0, green: 216/255.0, blue: 216/255.0, alpha: 1.0)
    }
    
    /// Basic app font use in application
    struct Fonts {
        static let Regular = "AvenirNext-Regular"
    }
    
    /// Basic app font size use in application
    struct FontSize {
        static let Small = CGFloat(15)
        static let Medium = CGFloat(17)
        static let Large = CGFloat(22)
        static let ExtraLarge = CGFloat(50)
    }
    
    struct CornerRadius {
        static let defaultRadius = CGFloat(10)
    }
}

