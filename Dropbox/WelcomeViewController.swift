//
//  WelcomeViewController.swift
//  Dropbox
//
//  Created by Daniel Eden on 04/08/2014.
//  Copyright (c) 2014 Daniel Eden. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSignInButtonTouch(sender: AnyObject) {
        // Set referrer for the sign in/create account screen to "true"
        // Triggers push segue to the sign in flow
        NSUserDefaults.standardUserDefaults().setBool(true, forKey: "signInReferrer")
    }
    
    @IBAction func onCreateAccountButtonTouch(sender: AnyObject) {
        // Set referrer for the sign in/create account screen to "false"
        // Triggers push segue to the create account flow
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "signInReferrer")
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
