//
//  SettingsViewController.swift
//  Dropbox
//
//  Created by Daniel Eden on 05/08/2014.
//  Copyright (c) 2014 Daniel Eden. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.scrollEnabled = true
        settingsScrollView.contentSize = CGSizeMake(320, 772)
        
        let signInRoot = self.storyboard.instantiateViewControllerWithIdentifier("SignInRootView") as SignInRootViewController
        println("\(signInRoot.view)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onSignOutButtonTouch(sender: AnyObject) {
        let signInRoot = self.storyboard.instantiateViewControllerWithIdentifier("SignInRootView") as SignInRootViewController
        navigationController.popToViewController(signInRoot, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
