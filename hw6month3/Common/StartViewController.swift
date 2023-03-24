//
//  StartViewController.swift
//  hw6month3
//
//  Created by Nurjamal Mirbaizaeva on 24/3/23.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    var isHidden = true

    let logoImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "Image")
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 28)
    
        return label
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20)
        return label
    }()

    let emailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    let nameTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Email"
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
    
    let forgotLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        return label
    }()

    let button:UIButton = {
    let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 22
        button.layer.borderWidth = 1
        button.backgroundColor = .systemBlue
        return button
    }()
    
    let accountLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    let createbutton:UIButton = {
    let button = UIButton()
        button.setTitle("Create Now", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let image1: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "Image3")
        return image
    }()
    let image2: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "Image2")
        return image
    }()
    let image3: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "Image1")
        return image
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
        initAction2()
        isHidd()
    }
    private func initUI(){
        view.backgroundColor = .black
        
        view.addSubview(logoImage)
        view.addSubview(nameLabel)
        view.addSubview(loginLabel)
        view.addSubview(emailLabel)
        view.addSubview(nameTF)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTF)
        view.addSubview(forgotLabel)
        view.addSubview(button)
        view.addSubview(accountLabel)
        view.addSubview(createbutton)
        view.addSubview(image1)
        view.addSubview(image2)
        view.addSubview(image3)
        view.addSubview(eyebutton)
        eyebutton.tintColor = .systemGray
        
        nameLabel.text = "Welcome"
        nameLabel.textAlignment = .center
        nameLabel.textColor = .white
        loginLabel.text = "Login to your account"
        loginLabel.textAlignment = .center
        loginLabel.textColor = .white
        emailLabel.text = "Email"
        emailLabel.textColor = .white
        passwordLabel.text = "Password"
        passwordLabel.textColor = .white
        forgotLabel.text = "Forgot Password?"
        forgotLabel.textColor = .red
        accountLabel.text = "Don’t have account?"
        accountLabel.textColor = .darkGray
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(200)
            make.width.equalTo(375)
            make.top.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(0)
        }
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(1)
            make.height.equalTo(42)
            make.left.trailing.equalToSuperview().inset(120)
        }
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(0)
            make.height.equalTo(30)
            make.left.trailing.equalToSuperview().inset(78)
        }
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(25)
            make.height.equalTo(27)
            make.leading.equalToSuperview().offset(30)
        }
        nameTF.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(30)
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.height.equalTo(48)
        }
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(nameTF.snp.bottom).offset(6)
            make.leading.equalToSuperview().offset(31)
            make.height.equalTo(27)
        }
        passwordTF.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
        }
        forgotLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(7)
            make.trailing.equalTo(passwordTF.snp.trailing)
            make.height.equalTo(24)
        }
        button.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(40)
            make.top.equalTo(forgotLabel.snp.bottom).offset(28)
            make.height.equalTo(48)
        }
        accountLabel.snp.makeConstraints { make in
            make.top.equalTo(button.snp.bottom).offset(14)
            make.leading.equalToSuperview().offset(50)
            make.height.equalTo(24)
        }
        createbutton.snp.makeConstraints { make in
            make.leading.equalTo(accountLabel.snp.trailing).offset(16)
            make.top.equalTo(button.snp.bottom).offset(14)
            make.height.equalTo(24)
        }
        image1.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(31)
            make.top.equalTo(accountLabel.snp.bottom).offset(49)
            make.leading.equalToSuperview().offset(100)
        }
        image2.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(31)
            make.top.equalTo(accountLabel.snp.bottom).offset(49)
            make.leading.equalTo(image1.snp.trailing).offset(50)
        }
        image3.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(31)
            make.top.equalTo(createbutton.snp.bottom).offset(49)
            make.leading.equalTo(image2.snp.trailing).offset(50)
        }
        eyebutton.snp.makeConstraints { make in
            make.trailing.equalTo(passwordTF.snp.trailing).offset(-16)
            make.height.equalTo(16)
            make.top.equalTo(passwordTF.snp.top).offset(16)
        }
    }
    private func initAction(){
        button.addTarget(self,
                         action: #selector(goToNextPage(_:)),
                         for: .touchUpInside)
    }
    @objc func goToNextPage(_ sender: UIButton){
        if nameTF.text?.isEmpty ?? true && passwordTF.text?.isEmpty ?? true{
            nameTF.layer.borderWidth = 2
            nameTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderWidth = 2
            passwordTF.layer.borderColor = UIColor.red.cgColor
        }else if nameTF.text?.isEmpty ?? true{
            nameTF.layer.borderWidth = 2
            nameTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderWidth = 0
        }else if passwordTF.text?.isEmpty ?? true{
            passwordTF.layer.borderWidth = 2
            passwordTF.layer.borderColor = UIColor.red.cgColor
            nameTF.layer.borderWidth = 0
        }else{
            nameTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
        }
    }
    private func isHidd(){
        eyebutton.addTarget(self, action: #selector(hidden(_:)), for: .touchUpInside)
    }
    @objc func hidden(_ sender: UIButton){
        if isHidden{
            eyebutton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            passwordTF.isSecureTextEntry = false
        }else{
            eyebutton.setImage(UIImage(systemName: "eye"), for: .normal)
            passwordTF.isSecureTextEntry = true
        }
        isHidden = !isHidden
    }
    private func initAction2(){
        createbutton.addTarget(self,
                         action: #selector(goToLastPage(_:)),
                         for: .touchUpInside)
    }
    @objc func goToLastPage(_ sender: UIButton){
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
