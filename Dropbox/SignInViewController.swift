//
//  SignInViewController.swift
//  Dropbox
//
//  Created by Daniel Eden on 04/08/2014.
//  Copyright (c) 2014 Daniel Eden. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    var state = 1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSignInBackButtonTouch(sender: AnyObject) {
        navigationController.popToRootViewControllerAnimated(true)
    }

    @IBAction func onCancelSignInHelpButtonTouch(sender: AnyObject) {
        dismissViewControllerAnimated(false, completion: nil)
    }
    
    @IBAction func reset(segue: UIStoryboardSegue) {
        state = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        if(state == 0) {
            navigationController.popToRootViewControllerAnimated(true)
            state = 1
        }
    }
    
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        if(segue.identifier) {
//            navigationController.popToViewController(self.navigationController.viewControllers.first as UIViewController, animated: true)
//        }
//    }

}
