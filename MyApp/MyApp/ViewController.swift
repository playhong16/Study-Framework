//
//  ViewController.swift
//  MyApp
//
//  Created by playhong on 2023/12/24.
//

import UIKit

import AFramework
import BFramework

class ViewController: UIViewController {
    
    let signupView = SignUpView()
    
    override func loadView() {
        self.view = signupView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSignUpButton()
        // Do any additional setup after loading the view.
    }
    
    func configureSignUpButton() {
        signupView.signupButton.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
    }
    
    @objc
    func signupButtonTapped() {
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
    }

}

