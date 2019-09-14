//
//  UIViewController+StoryboardId.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import UIKit

extension UIViewController{
    class var storyboardId: String{
        return String(describing: self)
    }
}
