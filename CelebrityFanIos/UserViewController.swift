//
//  UserViewController.swift
//  CelebrityFanIos
//
//  Created by MacStudent on 2019-06-28.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var studentIDtxt: UITextField!
    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!

    @IBOutlet weak var txtDate: UITextField!

    @IBOutlet weak var sltGender: UISegmentedControl!
    
    var emailID: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let e = emailID{
            
            print(e)
        }

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
