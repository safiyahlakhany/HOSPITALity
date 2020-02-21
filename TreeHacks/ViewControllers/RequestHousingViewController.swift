//
//  RequestHousingViewController.swift
//  TreeHacks
//
//  Created by Safiyah Lakhany on 2/16/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit
import Firebase


class RequestHousingViewController: UIViewController {
    
    var user = Firebase.Auth.auth().currentUser
// firuser
    
    @IBOutlet weak var LocationTF: UITextField!
    
    @IBOutlet weak var StartDatePicker: UIDatePicker!
    
    @IBOutlet weak var EndDatePicker: UIDatePicker!
    
    @IBOutlet weak var OperationTF: UITextField!
    

    
    @IBAction func SubmitPressed(_ sender: Any)
    {
        Firebase.Auth.auth()
    }
    
    
    override func viewDidLoad() {
        
        if ((user) != nil) {
            print(user!)
            
        
        } else {
            print("no user - error")
        }
        
        
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
