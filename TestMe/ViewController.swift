//
//  ViewController.swift
//  TestMe
//
//  Created by aki.yu on 2018/10/4.
//  Copyright © 2018 aki.yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAccount: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnLogin(_ sender: Any) {
        
        //textAccount.text == "aki" &&  == "qaz"
        let spi = SPI()
        
        spi.login(acc: textAccount.text!, pass: textPassword.text!) { (result) in
            
            if result == true {
                self.performSegue(withIdentifier: "segueToHome", sender: self)
            } else {
                let alert = UIAlertController(title: "", message: "帳號密碼錯誤", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            
        }
       
    }
 
    
}

