//
//  TakePhotoViewController.swift
//  fbLoginTest
//
//  Created by Adela Gao on 7/9/16.
//  Copyright © 2016 Adela Gao. All rights reserved.
//

import UIKit
import Photos
import Firebase
import FirebaseAuth
import FirebaseStorage

class TakePhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var storageRef: FIRStorageReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func configureStorage() {
//        storageRef = FIRStorage.storage().reference()
//        if let currentUser = FIRAuth.auth()?.currentUser {
//            
//        } else {
//            //need to log in
//            FIRAuth.auth()?.signInWithCredential(<#T##credential: FIRAuthCredential##FIRAuthCredential#>, completion: <#T##FIRAuthResultCallback?##FIRAuthResultCallback?##(FIRUser?, NSError?) -> Void#>)
//        }
    }

}
