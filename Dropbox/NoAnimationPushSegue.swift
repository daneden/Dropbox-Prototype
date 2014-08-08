//
//  NoAnimationPushSegue.swift
//  Dropbox
//
//  Created by Daniel Eden on 07/08/2014.
//  Copyright (c) 2014 Daniel Eden. All rights reserved.
//

import UIKit

// Create custom push segue without animation
class NoAnimationPushSegue: UIStoryboardSegue {
    override func perform () {
        let src = self.sourceViewController as UIViewController
        let dst = self.destinationViewController as UIViewController
        src.navigationController.pushViewController(dst, animated:false)
    }
}
