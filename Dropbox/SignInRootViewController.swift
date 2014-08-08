//
//  SignInRootViewController.swift
//  Dropbox
//
//  Created by Daniel Eden on 04/08/2014.
//  Copyright (c) 2014 Daniel Eden. All rights reserved.
//

import UIKit

class SignInRootViewController: UIViewController {
    
    var flags = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // If the referrer flag is set...
        if(flags.objectForKey("signInReferrer")) {
            
            // If we were sent here by a "Sign In" button...
            if(flags.objectForKey("signInReferrer") as NSObject == true) {
                
                // Segue to the sign in flow
                performSegueWithIdentifier("signInRootToFormSegue", sender: self)
                
                
            } else {
                
                // Segue to the create account flow
                performSegueWithIdentifier("createAccountRootToFormSegue", sender: self)
                
            }
            
            // Remove the flag and release the variable
            flags.removeObjectForKey("signInReferrer")
            flags = nil
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
