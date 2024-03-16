//
//  ViewController.swift
//  Login1saakix
//
//  Created by SAMUEL HERRERA on 15/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var ForgotUsername: UIButton!
    @IBOutlet weak var ForgotPassword: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == ForgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == ForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = UserNameTextField.text
        }
    }

    @IBAction func ForgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Forgot", sender: ForgotUsername)
    }
    
    @IBAction func ForgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Forgot", sender: ForgotPassword)
    }
    
    
}

