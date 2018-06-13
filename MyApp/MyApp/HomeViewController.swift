//
//  HomeViewController.swift
//  MyApp
//
//  Created by Hafsa Mufassir on 3/25/18.
//  Copyright © 2018 Hafsa Mufasssir. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class HomeViewController: UIViewController {
    var username:String = ""
    
    @IBOutlet weak var UsernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UsernameLabel?.text = username
        //UsernameLabel.text = [NSString stringWithFormat:@"Hello %@", usernameTextField.text];

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func MyProfileButton(_ sender: Any) {
    }
    
    @IBAction func InstructionsButton(_ sender: Any) {
    }
    
    @IBAction func LevelsButton(_ sender: Any) {
    }
    
    @IBAction func RanksButton(_ sender: Any) {
    }
    
    @IBAction func EventsButton(_ sender: Any) {
    }
    
    @IBAction func SettingsButton(_ sender: Any) {
    }
    
    @IBAction func LogOutButton(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil )
       
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
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
