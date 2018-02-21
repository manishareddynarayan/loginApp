//
//  loginDetailsViewController.swift
//  first
//
//  Created by N Manisha Reddy on 1/17/18.
//  Copyright © 2018 N Manisha Reddy. All rights reserved.
//

import UIKit

class loginDetailsViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!

    @IBOutlet weak var passwordLabel: UILabel!
    var userName: String = ""
    var password: String = ""
    override func viewDidLoad() {
    super.viewDidLoad()
         userNameLabel.text = userName
        passwordLabel.text = password
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
