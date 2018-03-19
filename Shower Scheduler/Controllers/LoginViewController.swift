//
//  LoginViewController.swift
//  Shower Scheduler
//
//  Created by C. Austin Adams on 3/18/18.
//  Copyright © 2018 Austin Adams. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func loginPressed(_ sender: UIButton) {
        print("Logging in...")
        performSegue(withIdentifier: "login", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
//        if segue.identifier! == "login" {
//            let destination = segue.destination as! ShowerDetailViewController
//
//        }
    }
 

}
