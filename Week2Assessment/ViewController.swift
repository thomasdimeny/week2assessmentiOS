//
//  ViewController.swift
//  Week2Assessment
//
//  Created by Ryan Brashear on 12/17/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    
    @IBAction func submitButtonTapped(_ sender: Any) {
            if firstName.text != "" && lastName.text != "" {
                let newPerson = Person(firstName: firstName.text!, lastName: lastName.text!, email: email.text!)
                
                //Success Alert
                let alertController = UIAlertController(title: "Greetings", message: "Hello, \(newPerson.firstName) \(newPerson.lastName) Your email is: \(newPerson.email).", preferredStyle: .alert)
                let closeAction = UIAlertAction(title: "Close", style: .default, handler: nil)
                alertController.addAction(closeAction)
                self.present(alertController, animated: true, completion: nil)
            } else {
                
                //Error Alert
                let alertController = UIAlertController(title: "Error", message: "You need to fill out all three text boxes.", preferredStyle: .alert)
                let closeAction = UIAlertAction(title: "Close", style: .default, handler: nil)
                alertController.addAction(closeAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}

