//
//  SignInViewController.swift
//  TreeHacks
//
//  Created by Safiyah Lakhany on 2/15/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit
import Firebase
//import FirebaseAuth
//import FirebaseDatabase

class SignInViewController: UIViewController {


     var ref: DatabaseReference!

   // var ref = Database.database().reference()
    
    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    
    
    
    @IBAction func SignInPressed(_ sender: Any) {
        
        // validate text fields
        
        let email = Email.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let password = Password.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        // Signing in the user
        
        Firebase.Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
            }
            
            else{
                var user = Firebase.Auth.auth().currentUser
                if let user = user {
                    let patient = user.value(forKey: "isPatient")
                    print(patient)
                }
                self.transitionToHome(accountType: 0, sender: (Any).self)
                print(user)
            }
        }
    }
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
//    func myFunction() {
//        let array = [NSObject]()
//        let group = DispatchGroup() // initialize
//
//        array.forEach { obj in
//
//            // Here is an example of an asynchronous request which use a callback
//            //group.enter() // wait
//            //LogoRequest.init().downloadImage(url: obj.url) { (data) in
//                if (data) {
//                    group.leave() // continue the loop
//                }
//            }
//        }
//
//        group.notify(queue: .main) {
//            // do something here when loop finished
//        }
//    }
//
    func transitionToHome(accountType: Int, sender: Any)
    {
        //var ref = Firebase.database().ref("users");
       // var userTable =
//    {   var list: DatabaseQuery?
//        let group = DispatchGroup()
//        group.enter()

//          let userID = Auth.auth().currentUser?.uid
//        DispatchQueue.main.async {
//            print(userID)
//            list = self.ref.child("users").queryEqual(toValue: userID, childKey: "userID")
            
//        }
//
//        group.notify(queue: .main) {
//            print(list)
//        }
        
          // Get user value
          //let value = snapshot.value as? NSDictionary
          //let username = value?["username"] as? String ?? ""
          //et user = User(username: username)

//          // ...
//          }) { (error) in
//            print(error.localizedDescription)
//        }

        performSegue(withIdentifier: "signinnext", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
