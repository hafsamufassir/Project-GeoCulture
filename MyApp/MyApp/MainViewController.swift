//
//  MainViewController.swift
//  MyApp
//
//  Created by Hafsa Mufassir on 3/22/18.
//  Copyright © 2018 Hafsa Mufasssir. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LogInButton(_ sender: Any) {
    }
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    /*override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
          if let user = Auth.auth().currentUser{
            self.performSegue(withIdentifier: "toHomeScreen", sender: self)
        }
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
