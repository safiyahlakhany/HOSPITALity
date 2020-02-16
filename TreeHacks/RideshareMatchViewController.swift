//
//  RideshareMatchViewController.swift
//  TreeHacks
//
//  Created by Safiyah Lakhany on 2/16/20.
//  Copyright © 2020 Safiyah Lakhany. All rights reserved.
//

import UIKit

class RideshareMatchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return self
        
    }
    
   /* func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    */
/*
    @IBOutlet var RideshareTableView: UITableView!
    var selectedUserName = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RideshareTableView.delegate = self
        RideshareTableView.dataSource = self
        // Do any additional setup after loading the view.
        loadRequests()
    }
    
    func loadRequests()
    {
        // set up data base stuff
    }

    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        loadRequests()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return number of database entries
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = RideshareTableView.dequeueReusableCell(withIdentifier: "RideshareTableViewCell") as! RideshareTableViewCell
        
        /*let current_request = requests[indexPath.row]
        
        cell.usernameLabel.text = "@" + (current_request["username"] as! String)
        cell.willingToGiveLabel.text = current_request["my_stickers"] as! String
        cell.lookingForLabel.text = current_request["want_stickers"] as! String
        cell.vc = self*/
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */*/

}
