//
//  DEPushNoAnimationSegue.swift
//  Dropbox
//
//  Created by Daniel Eden on 04/08/2014.
//  Copyright (c) 2014 Daniel Eden. All rights reserved.
//

import UIKit

class DEPushNoAnimationSegue: UIStoryboardSegue {
    override func perform () {
        let src = self.sourceViewController as UIViewController
        let dst = self.destinationViewController as UIViewController
        src.navigationController.pushViewController(dst, animated:false)
    }
}
