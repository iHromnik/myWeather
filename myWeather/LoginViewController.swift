//
//  ViewController.swift
//  myWeather
//
//  Created by iHRomnik on 08.02.2024.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
                    
                let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    
    override func viewWillDisappear(_ animated: Bool) { 
        super.viewWillDisappear(animated)
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        
    let checkResult = checkUserData()
        
        if !checkResult {
            showLoginError()
        }
            return checkResult
    }
    
    func checkUserData() -> Bool {
        guard let login = loginInput.text,
              let password = passwordInput.text else {return false}
        if login == "1" && password == "1" {
            return true
        } else {
  
            return false
        }
        
        
    }
    
    func showLoginError() {
        let alert = UIAlertController(title: "Error", message: "Wrong password", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
            @objc func keyboardWillShow(notification: Notification) {
               guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
               let insets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.size.height, right: 0.0)
               scrollView.contentInset = insets
           }
           
           @objc func keyboardWillHide(notification: Notification) {
               let insets = UIEdgeInsets.zero
               scrollView.contentInset = insets
           }
           
           @objc func hideKeyboard() {
               self.scrollView?.endEditing(true)
           }

    @IBAction func loginButton(_ sender: UIButton) {
    }
    
}

