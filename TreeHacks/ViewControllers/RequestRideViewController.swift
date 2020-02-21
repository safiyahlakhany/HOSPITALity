//
//  RequestRideViewController.swift
//  TreeHacks
//
//  Created by Safiyah Lakhany on 2/16/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit
import Firebase

class RequestRideViewController: UIViewController {

    @IBOutlet weak var PickupTF: UITextField!
    
    @IBOutlet weak var DestinationTF: UITextField!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    @IBOutlet weak var OperationTF: UITextField!
    
    
    
    @IBAction func SubmitPressed(_ sender: Any) {
        
        //print(DatePicker.value)
    }
    
    
    
    override func viewDidLoad() {
        guard let uid12 = Auth.auth().currentUser?.uid else {
            return
        }
        print("User ID post guard: \(uid12)")
//        print(Firebase.Autho.auth.currentUser?.uid)
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
