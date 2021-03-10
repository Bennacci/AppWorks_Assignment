//
//  ViewController.swift
//  log-ing & sign-up page
//
//  Created by Ben Tee on 2021/3/8.
//  Copyright © 2021 TKY co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet var sc: UISegmentedControl!
    
//    @IBOutlet weak var checkTextField: UITextField!
    
    
    @IBOutlet weak var accoutTextfieldContent: UITextField!
    @IBOutlet weak var passwordTextFieldContent: UITextField!
    @IBOutlet weak var checkTextFieldContent: UITextField!
    
    @IBOutlet weak var checkText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkTextFieldContent.backgroundColor = .darkGray
    }

    @IBAction func scSelected(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkTextFieldContent.allowsEditingTextAttributes = false
            checkTextFieldContent.backgroundColor = .darkGray
            checkText.textColor = .darkGray
        } else {
            checkTextFieldContent.allowsEditingTextAttributes = true
            checkTextFieldContent.backgroundColor = .white
            checkText.textColor = .black
        }
    }

    @IBAction func buttonDidPressed(_ sender: UIButton) {
        if (accoutTextfieldContent.text == "appworks_school@gmail.com" &&
            passwordTextFieldContent.text == "1234" &&
            checkTextFieldContent.backgroundColor == .darkGray) ||
            (accoutTextfieldContent.hasText == true &&
            passwordTextFieldContent.hasText == true &&
            passwordTextFieldContent.text == checkTextFieldContent.text &&
            checkTextFieldContent.backgroundColor == .white){
            alertPopUp(title: "Appworks School", message:"Login Succeed.", quitButton: "OK")
        } else if accoutTextfieldContent.hasText == false {
           alertPopUp(title: "Error", message: "Account should not be empty.", quitButton: "OK")
        } else if passwordTextFieldContent.hasText == false{
           alertPopUp(title: "Error", message: "Password should not be empty.", quitButton: "OK")
        } else if checkTextFieldContent.hasText == false &&
        checkTextFieldContent.backgroundColor == .white{
           alertPopUp(title: "Error", message: "Check Password should not be empty.", quitButton: "OK")
        } else if passwordTextFieldContent.text == checkTextFieldContent.text &&
        checkTextFieldContent.backgroundColor == .white{
           alertPopUp(title: "Error", message: "Signup fail", quitButton: "OK")
        } else {
           alertPopUp(title: "Error", message: "Login fail", quitButton: "OK")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func alertPopUp (title: String, message: String, quitButton tiTle: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: tiTle, style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
}
