//
//  ThirdViewController.swift
//  hw6month3
//
//  Created by Nurjamal Mirbaizaeva on 24/3/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var email: String?
    
    let logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Image")
        return image
    }()
    
    let forgotLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 24)
        return label
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
    
    let chooseLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 17)
        return label
    }()
    
    let needLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    let sendbutton:UIButton = {
        let button = UIButton()
        button.setTitle("Send OTP", for: .normal)
        button.layer.cornerRadius = 22
        button.layer.borderWidth = 1
        button.backgroundColor = .systemBlue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    private func initUI(){
        view.backgroundColor = .black
        
        guard let _ = email else {return}
        
        view.addSubview(logoImage)
        view.addSubview(forgotLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTF)
        emailTF.text = email
        view.addSubview(chooseLabel)
        view.addSubview(needLabel)
        view.addSubview(sendbutton)
        
        forgotLabel.text = "Forgot Password"
        forgotLabel.textAlignment = .center
        forgotLabel.textColor = .white
        emailLabel.text = "Enter your email"
        emailLabel.textColor = .white
        chooseLabel.text = "Choose Another Method"
        chooseLabel.textColor = .systemGray
        needLabel.text = "Need Help?"
        needLabel.textColor = .white
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(200)
            make.width.equalTo(375)
            make.top.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(0)
        }
        forgotLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(1)
            make.height.equalTo(36)
            make.left.trailing.equalToSuperview().inset(87)
        }
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotLabel.snp.bottom).offset(61)
            make.height.equalTo(221)
            make.leading.equalToSuperview().offset(31)
            make.height.equalTo(27)
        }
        emailTF.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
            make.height.equalTo(48)
            make.left.trailing.equalToSuperview().inset(30)
        }
        chooseLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTF.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(31)
            make.height.equalTo(24)
        }
        needLabel.snp.makeConstraints { make in
            make.leading.equalTo(chooseLabel.snp.trailing).offset(18)
            make.top.equalTo(emailTF.snp.bottom).offset(11)
            make.height.equalTo(24)
        }
        sendbutton.snp.makeConstraints { make in
            make.left.trailing.equalToSuperview().inset(47)
            make.top.equalTo(chooseLabel.snp.bottom).offset(22)
            make.height.equalTo(48)
        }
    }
}
