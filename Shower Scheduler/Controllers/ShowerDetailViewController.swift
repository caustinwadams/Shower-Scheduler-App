//
//  ShowerDetailViewController.swift
//  Shower Scheduler
//
//  Created by C. Austin Adams on 3/15/18.
//  Copyright © 2018 Austin Adams. All rights reserved.
//

import UIKit
import ChameleonFramework
import Firebase

class ShowerDetailViewController: UIViewController {

    @IBOutlet weak var showerLabel: UILabel!
    @IBOutlet weak var showerButton: UIButton!
    var isRunning: Bool = false
    
    func setLabels(_ color       : UIColor,
                   _ buttonLabel : String,
                   _ titleLabel  : String) {
        showerButton.backgroundColor! = color
        showerButton.setTitle(buttonLabel, for: .normal)
        showerLabel.text! = titleLabel
    }
    
    // TODO: - Need to change Rules in FB to make users needed to start/stop shower
    @IBAction func buttonToggled(_ sender: UIButton) {
        isRunning = !isRunning
        let cloudDB = Database.database().reference().child("Shower")
        let showerDict: [String: Any] = [
            "user" : "Austin",
            "time" : "\(Date())"
        ]
        
        if isRunning {
            setLabels(UIColor.flatRed(), "Stop", "Shower Running")
            cloudDB.childByAutoId().setValue(showerDict)
        } else {
            setLabels(UIColor.flatSkyBlue(), "Start", "Shower Stopped")
            cloudDB.removeValue()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showerButton.layer.cornerRadius = showerButton.frame.height / 2
        showerButton.setTitle("Start", for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
