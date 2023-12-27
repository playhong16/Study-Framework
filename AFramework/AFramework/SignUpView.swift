//
//  SignUpView.swift
//  AFramework
//
//  Created by playhong on 2023/12/24.
//

import UIKit

import Shared

public class SignUpView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "회원가입 하시겠습니까요?"
        label.textColor = .lightGray
        return label
    }()
    
    public let signupButton: UIButton = {
        let button = UIButton()
        button.setTitle("회원가입", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemYellow
        self.addSubview(titleLabel)
        self.addSubview(signupButton)
        setConstraints()
        SampleCode.test()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signupButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            signupButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20)
        ])
    }
}
