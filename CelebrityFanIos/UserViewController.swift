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
    

    @IBAction func btnSubmit(_ sender: Any) {
        
        validator()
    }
    
    func validator(){
        if  let  sid =  studentIDtxt.text {
            if  let  fName =  txtFirstName.text{
                print("no first name")
                if  let  lName =  txtLastName.text{
//                    let sb = UIStoryboard(name: "Main", bundle: nil)
//                    let  studentVC = sb.instantiateViewController(withIdentifier: "StudentVC") as! StudentViewController
//
//                    self.present(studentVC, animated: true, completion: nil)

                                        let sb = UIStoryboard(name: "Main", bundle: nil)
                                        let  studentVC = sb.instantiateViewController(withIdentifier: "StudentVC") as! StudentViewController
                    
                                        self.navigationController?.pushViewController(studentVC, animated: true)


                }
                
            }
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
