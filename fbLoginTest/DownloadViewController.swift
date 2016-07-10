//
//  DownloadViewController.swift
//  fbLoginTest
//
//  Created by Adela Gao on 7/9/16.
//  Copyright © 2016 Adela Gao. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseStorage

class DownloadViewController: UIViewController {

    var storageRef:FIRStorageReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storageRef = FIRStorage.storage().reference()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
