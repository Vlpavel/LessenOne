//
//  ViewController.swift
//  Weather
//
//  Created by Павел Власов on 07.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var LoginTextField: UITextField!
    @IBOutlet private weak var PasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGesture()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.addObsservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.removeObservers()
    }
    
    private func addGesture() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(handleGesture))
        self.scrollView.addGestureRecognizer(gesture)
    }
    @objc private func handleGesture() {
        self.scrollView.endEditing(true)
    }
    private func addObsservers() {
        NotificationCenter.default
            .addObserver(self,
                         selector: #selector(handleKeyboardWillShow),
                         name: UIResponder.keyboardWillShowNotification,
                         object: nil)
        NotificationCenter.default
            .addObserver(self,
                         selector: #selector(handleKeyboardWillHide),
                         name: UIResponder.keyboardWillHideNotification,
                         object: nil)
    }

    private func removeObservers() {
        NotificationCenter.default
            .removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default
            .removeObserver(self,
                            name: UIResponder.keyboardWillHideNotification,
                            object: nil)
    }
    
    @objc private func handleKeyboardWillShow() {
        self.scrollView.contentInset.bottom += 120
    }
    
    @objc private func handleKeyboardWillHide() {
        self.scrollView.contentInset.bottom = 0

    }
    @IBAction private func OnButtonPressed(_ sender: Any) {
   
        let login = self.LoginTextField.text
        let password = self.PasswordTextField.text
        print(login, password)
        
        if login == "admin" && password == "123456" {
            print("успешная авторизация")
        } else {
            print("неуспешная авторизация")
        }
        
    }
}

