//
//  LoginViewController.swift
//  fbLoginTest
//
//  Created by Adela Gao on 7/9/16.
//  Copyright © 2016 Adela Gao. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import Firebase

class LoginViewController: UIViewController, GIDSignInUIDelegate, FBSDKLoginButtonDelegate {
    
    @IBOutlet weak var fbLoginButton: FBSDKLoginButton!
    @IBOutlet weak var googleLoginButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        fbLoginButton.delegate = self
        fbLoginButton.readPermissions = ["public_profile", "email", "user_friends"]
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
        //view.addSubview(fbLoginButton)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        //fbLoginButton.center = view.center
    }

    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        if let error = error {
            print(error.localizedDescription)
            return
        } else if result.isCancelled {
            print("cancelled login")
        } else {
            print("log in success! \(result)")
            let takePhotoVC = TakePhotoViewController()
            navigationController?.presentViewController(takePhotoVC, animated: true, completion: nil)
        }
        
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("logging out")
    }

}
