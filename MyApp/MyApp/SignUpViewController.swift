//
//  SignUpViewController.swift
//  MyApp
//
//  Created by Hafsa Mufassir on 3/22/18.
//  Copyright © 2018 Hafsa Mufasssir. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailtextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var PasswordAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackButton(_ sender: Any) {
    }
    
    @IBAction func OkButton(_ sender: Any) {
        //guard let username = usernameTextField.text else {return}
        if passwordTextField.text != PasswordAgainTextField.text {
            let alertController = UIAlertController(title: "Passwords do not match", message: "Please, check again", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else {
            //Auth.auth().createUser(withEmail: emailtextField.text!, password: passwordTextField.text!){ (usernameTextField, error) in
            Auth.auth().createUser(withEmail: emailtextField.text!, password: passwordTextField.text!){ (user, error) in
                if error == nil && user != nil{
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                    
                    /*let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                    changeRequest?.displayName = username
                    changeRequest?.commitChanges{error in
                        if error == nil {
                         print("User display name changed!")
                        self.dismiss(animated: false, completion: nil)
                    }
                }*/
        }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
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
