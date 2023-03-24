//
//  SecondViewController.swift
//  hw6month3
//
//  Created by Nurjamal Mirbaizaeva on 24/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    var isHidden = true

    let logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Image")
        return image
    }()
    
    let registerLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 28)
        return label
    }()
    
    let createLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    let usernameTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Username"
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor.white.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    let emailTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Email"
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor.white.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    
    let mobilLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    let mobilTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Mobile Number"
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor.white.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    let passwordTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Password"
        tf.layer.cornerRadius = 10
        tf.layer.backgroundColor = UIColor.white.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    
    let button:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 22
        button.layer.borderWidth = 1
        button.backgroundColor = .systemBlue
        return button
    }()
    
    let eyebutton: UIButton = {
    let button = UIButton()
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        initAction()
        isHidd2()
    }
    private func initUI(){
        view.backgroundColor = .black
        
        view.addSubview(logoImage)
        view.addSubview(registerLabel)
        view.addSubview(createLabel)
        view.addSubview(usernameLabel)
        view.addSubview(usernameTF)
        view.addSubview(emailLabel)
        view.addSubview(emailTF)
        view.addSubview(mobilLabel)
        view.addSubview(mobilTF)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTF)
        view.addSubview(button)
        view.addSubview(eyebutton)
        eyebutton.tintColor = .systemGray
        
        registerLabel.text = "Register"
        registerLabel.textAlignment = .center
        registerLabel.textColor = .white
        createLabel.text = "Create a new account"
        createLabel.textAlignment = .center
        createLabel.textColor = .white
        usernameLabel.text = "Username"
        usernameLabel.textColor = .white
        emailLabel.text = "Email"
        emailLabel.textColor = .white
        mobilLabel.text = "Mobile Number"
        mobilLabel.textColor = .white
        passwordLabel.text = "Password"
        passwordLabel.textColor = .white
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(200)
            make.width.equalTo(375)
            make.top.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(0)
        }
        registerLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(1)
            make.height.equalTo(42)
            make.left.trailing.equalToSuperview().inset(130)
        }
        createLabel.snp.makeConstraints { make in
            make.top.equalTo(registerLabel.snp.bottom).offset(0)
            make.height.equalTo(30)
            make.left.trailing.equalToSuperview().inset(75)
        }
        usernameLabel.snp.makeConstraints { make in
            make.top.equalTo(createLabel.snp.bottom).offset(18)
            make.height.equalTo(27)
            make.leading.equalToSuperview().offset(31)
        }
        usernameTF.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(6)
            make.height.equalTo(48)
            make.left.trailing.equalToSuperview().inset(30)
        }
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(usernameTF.snp.bottom).offset(6)
            make.height.equalTo(27)
            make.leading.equalToSuperview().offset(31)
        }
        emailTF.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
            make.height.equalTo(48)
            make.left.trailing.equalToSuperview().inset(30)
        }
        mobilLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTF.snp.bottom).offset(6)
            make.height.equalTo(27)
            make.leading.equalToSuperview().offset(31)
        }
        mobilTF.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(30)
            make.top.equalTo(mobilLabel.snp.bottom).offset(4)
            make.height.equalTo(48)
        }
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(mobilTF.snp.bottom).offset(6)
            make.leading.equalToSuperview().offset(31)
            make.height.equalTo(27)
        }
        passwordTF.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
            make.top.equalTo(passwordLabel.snp.bottom).offset(4)
        }
        button.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(40)
            make.top.equalTo(passwordTF.snp.bottom).offset(26)
            make.height.equalTo(48)
        }
        eyebutton.snp.makeConstraints { make in
            make.trailing.equalTo(passwordTF.snp.trailing).offset(-16)
            make.height.equalTo(16)
            make.top.equalTo(passwordTF.snp.top).offset(16)
        }
    }
    private func initAction(){
        button.addTarget(self,
                         action: #selector(check(_:)),
                         for: .touchUpInside)
    }
    @objc func check(_ sender: UIButton){
        let vc = ThirdViewController()
        if usernameTF.text?.isEmpty ?? true && emailTF.text?.isEmpty ?? true && mobilTF.text?.isEmpty ?? true && passwordTF.text?.isEmpty ?? true{
            usernameTF.layer.borderWidth = 2
            usernameTF.layer.borderColor = UIColor.red.cgColor
            emailTF.layer.borderWidth = 2
            emailTF.layer.borderColor = UIColor.red.cgColor
            mobilTF.layer.borderWidth = 2
            mobilTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderWidth = 2
            passwordTF.layer.borderColor = UIColor.red.cgColor
        }else if usernameTF.text?.isEmpty ?? true{
            usernameTF.layer.borderWidth = 2
            usernameTF.layer.borderColor = UIColor.red.cgColor
            emailTF.layer.borderWidth = 0
            mobilTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
        }else if emailTF.text?.isEmpty ?? true{
            emailTF.layer.borderWidth = 2
            emailTF.layer.borderColor = UIColor.red.cgColor
            usernameTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
            mobilTF.layer.borderWidth = 0
        }else if mobilTF.text?.isEmpty ?? true{
            mobilTF.layer.borderWidth = 2
            mobilTF.layer.borderColor = UIColor.red.cgColor
            usernameTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
            emailTF.layer.borderWidth = 0
        }else if passwordTF.text?.isEmpty ?? true{
            passwordTF.layer.borderWidth = 2
            passwordTF.layer.borderColor = UIColor.red.cgColor
            usernameTF.layer.borderWidth = 0
            emailTF.layer.borderWidth = 0
            mobilTF.layer.borderWidth = 0
        }else{
            usernameTF.layer.borderWidth = 0
            emailTF.layer.borderWidth = 0
            mobilTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
            vc.email = emailTF.text ?? "empty"
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
        private func isHidd2(){
            eyebutton.addTarget(self, action: #selector(hidden2(_:)), for: .touchUpInside)
        }
        @objc func hidden2(_ sender: UIButton){
            if isHidden{
                eyebutton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
                passwordTF.isSecureTextEntry = false
            }else{
                eyebutton.setImage(UIImage(systemName: "eye"), for: .normal)
                passwordTF.isSecureTextEntry = true
            }
            isHidden = !isHidden
        }
    }

