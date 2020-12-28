//
//  UIStoryboard+Ext.swift
//  FoodApp
//
//  Created by Admin on 26/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import Foundation
import UIKit

enum StoryBoard : String{
    case home = "Home"
}

extension UIStoryboard {
    class var home: UIStoryboard {
        return UIStoryboard(name: StoryBoard.home.rawValue, bundle: nil)
    }
}
