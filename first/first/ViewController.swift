//
//  ViewController.swift
//  first
//
//  Created by N Manisha Reddy on 1/16/18.
//  Copyright © 2018 N Manisha Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var userNameLogo: UIImageView!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var pwdLogo: UIImageView!
    @IBOutlet weak var labelLog: UILabel!
    
    
    
    
    @IBAction func submitBtn(_ sender: Any) {
//        if((sender as! UIButton).tag == 0){            
//            
//            //While logging in
//            (sender as! UIButton).tag = 1
//            let isValid:Bool = self.validateTextFields()
//            if let userName = userTextField.text {
//                
//                if let pwd = passTextField.text {
//                    labelLog.text = "user name: " + userName + " and password: " + pwd
//                }
//            }
//            
//            userTextField.isHidden = true
//        userNameLogo.isHidden = true
//            passTextField.resignFirstResponder()
//            pwdLogo.isHidden = true
//            labelLog.isHidden = false
//            passTextField.isHidden = true
//            (sender as AnyObject).setTitle("logout",for: .normal)
//        }else{
//            (sender as! UIButton).tag = 0
//            
//            userTextField.becomeFirstResponder()
//            userTextField.isHidden = false
//            userNameLogo.isHidden = false
//            pwdLogo.isHidden = false
//            passTextField.isHidden = false
//            labelLog.isHidden = true
//            userTextField.text = ""
//            passTextField.text = ""
//            (sender as AnyObject).setTitle("login",for: .normal)
//        }
        
        
    }
    
    func validateTextFields() -> Bool{
        return isValidEmail(testStr: userTextField.text!)
    }
    
    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! loginDetailsViewController
        vc.userName = userTextField.text!
        vc.password = passTextField.text!
        
        
    }
    }
