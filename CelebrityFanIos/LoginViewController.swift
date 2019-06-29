//
//  LoginViewController.swift
//  CelebrityFanIos
//
//  Created by MacStudent on 2019-06-28.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var lblHeader: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnLogin(_ sender: Any) {
    validateUser()
    }
    
    func validateUser(){
        if (txtEmail.text == "admin@gmail.com"  && txtPassword.text == "admin123") {
            self.lblHeader.text = "Successful"
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let  userVC = sb.instantiateViewController(withIdentifier: "UserVC") as! UserViewController
            userVC.emailID = txtEmail.text
            self.present(userVC, animated: true, completion: nil)
        }
        else{//Step - 1
            //Create AlertController Object
            let alert  =
                UIAlertController(title: "Message", message: "Welcome to iOS Programming", preferredStyle: UIAlertController.Style.actionSheet)
            
            //Step - 2
            //OK Button add
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
                print("Alert OK")
                
            })
            
            //Step - 3
            alert.addAction(actionOk)
            
            //Step - 2 Repeated
            //Cancel Button add
            let actionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            
            //Step - 3 Repeated
            alert.addAction(actionCancel)
            
            //Step - 2 Repeated
            //Ignore Button add
            let actionIgnore = UIAlertAction(title: "Ignore", style: UIAlertAction.Style.destructive, handler: nil)
            
            //Step - 3 Repeated
            alert.addAction(actionIgnore)
            
            
            //Step - 4
            //Present Alert Dialog to the user
            self.present(alert, animated: true, completion: nil)
        }
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
