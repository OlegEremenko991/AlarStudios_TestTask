//
//  LoginViewController.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 02.10.2020.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()

    }
    
    private func setupView() {
        self.title = "Login screen"
        
        loginTextField.setupTextField(placeholder: "Your login", borderWidth: 1, borderColor: .systemGray4, cornerRadius: 5, isSecureTextEntry: false)
        
        passwordTextField.setupTextField(placeholder: "Your password", borderWidth: 1, borderColor: .systemGray4, cornerRadius: 5, isSecureTextEntry: true)
        
        loginButton.setupButton(backgroundColor: .blue, titleColor: .white, cornerRadius: 10)
    
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }

}

extension LoginViewController: UITextFieldDelegate {
    
}
