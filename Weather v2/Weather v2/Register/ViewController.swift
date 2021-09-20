//
//  ViewController.swift
//  Weather v2
//
//  Created by Павел Власов on 11.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
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
     
     private func checkPassword() {
             let login = self.LoginTextField.text
             let password = self.PasswordTextField.text
         
             if login == "admin" && password == "123" {
                 self.showAdmin()
             } else {
                 self.showAlert()
         }
         
     }
     
     private func showAdmin() {
        let storyBoard = UIStoryboard(name: "Base", bundle: nil)
        let viewController = storyBoard.instantiateInitialViewController()
        if let viewController = viewController as? BaseVievStoryboard {
            self.present(viewController, animated: true)
        }
     }
     
     private func showAlert() {
     let alertController = UIAlertController(title: "Ошибка",
        message: "Неверный логин/пароль",
        preferredStyle: .alert)
     let action = UIAlertAction(title: "OK",
                                style: .cancel)
         alertController.addAction(action)
         self.present(alertController, animated: true)
     }
     @IBAction private func OnButtonPressed(_ sender: Any) {
         self.checkPassword()
     }

 }
