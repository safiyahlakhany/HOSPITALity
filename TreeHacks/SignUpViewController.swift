//
//  SignUpViewController.swift
//  TreeHacks
//
//  Created by Safiyah Lakhany on 2/15/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var FirstName: UITextField!
    
    
    
    @IBOutlet weak var LastName: UITextField!
    
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBAction func SignUpPressed(_ sender: Any) {
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
