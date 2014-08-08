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
        
        // Do any additional setup after loading the view.
        settingsScrollView.scrollEnabled = true
        settingsScrollView.contentSize = CGSizeMake(320, 772)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onSignOutButtonTouch(sender: AnyObject) {
        // Solution provided by Tim
        // Step 1: Get a copy of the Storyboard. This doesn't create anything, it just pulls up the "blueprint" of your app"
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Step 2: Instantiate the view controller that you want to jump to. In Storyboard, you have to click on the view controller of interest, open the Identity Inspector, and give it a unique Storyboard ID.
        var vc = storyboard.instantiateViewControllerWithIdentifier("SignInRootView") as UIViewController
        
        // Step 3: Set the rootViewController
        UIApplication.sharedApplication().keyWindow.rootViewController = vc
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
