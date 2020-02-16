//
//  SignInViewController.swift
//  TreeHacks
//
//  Created by Safiyah Lakhany on 2/15/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {


    
    
    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    
    
    
    @IBAction func SignInPressed(_ sender: Any) {
        
        // validate text fields
        
        let email = Email.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let password = Password.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        // Signing in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
            }
        }
    }
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
