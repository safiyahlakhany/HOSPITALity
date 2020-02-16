//
//  SignUpViewController.swift
//  TreeHacks
//
//  Created by Safiyah Lakhany on 2/15/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit
//import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerData.count
    }
    

    @IBOutlet weak var FirstName: UITextField!
    
    
    
    @IBOutlet weak var LastName: UITextField!
    
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    
    
    @IBOutlet weak var AccTypePicker: UIPickerView!
    
    
    var pickerData: [String] = [String]()
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return pickerData[row]
      }
    
      /*func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          myLabel.text = pickerData[row]
      }*/
    
    /*func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }*/
    
    func validateFields() -> String?
    {

        //pickerViewCont
        if FirstName.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == ""
            || LastName.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == ""
            || Email.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == ""
            || Password.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == ""
        {
            return "Please fill in all fields"
        }
        
    /*
        let cleanedPassword = Password.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            return
        }
        */
        

        return nil
    }
    
    
    @IBAction func SignUpPressed(_ sender: Any) {
        // Validate Fields
        let error = validateFields()
        
        if error != nil {
            ErrorLabel.text = error!
            ErrorLabel.alpha = 1
        }
        
        // Create cleaned versions of data
        let firstName = FirstName.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let lastName = LastName.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let email = Email.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let password = Password.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        // Create the user
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            if err != nil && error != nil {
                
                self.ErrorLabel.text = error!
                self.ErrorLabel.alpha = 1
            }
            else
            {
                let db = Firestore.firestore()
                db.collection("users").addDocument(data: ["firstName":firstName, "lastName":lastName, "isPatient":true, "uid":result!.user.uid ]) { (error) in
                    if error != nil {
                        // Show error message
                    }
                }
            }
        }
        // Transition to the home screen
        
    }
    
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.AccTypePicker.delegate = self
        self.AccTypePicker.dataSource = self
        self.pickerData = ["Volunteer", "Patient"]
        
        ErrorLabel.alpha = 0

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
