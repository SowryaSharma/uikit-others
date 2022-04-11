//
//  ViewController.swift
//  auto layout-3
//
//  Created by Cumulations Technologies on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "logo")
        let logo = UIImageView(image: image!)
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints=false
        logo.topAnchor.constraint(equalTo: view.topAnchor , constant: 50).isActive=true
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        logo.widthAnchor.constraint(equalToConstant: 100).isActive=true
        logo.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
        
        //email text field
        let email = UITextField()
        email.placeholder = "email,phone number or user name"
        view.addSubview(email)
        email.translatesAutoresizingMaskIntoConstraints=false
        email.topAnchor.constraint(equalTo: logo.bottomAnchor,constant: 20).isActive=true
        email.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        email.widthAnchor.constraint(equalToConstant: 250).isActive=true
        email.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        //password text field
        let password = UITextField()
        password.placeholder = "Password"
        view.addSubview(password)
        password.translatesAutoresizingMaskIntoConstraints=false
        password.topAnchor.constraint(equalTo: email.bottomAnchor,constant: 20).isActive=true
        password.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        password.widthAnchor.constraint(equalToConstant: 250).isActive=true
        password.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        //log in button
        let Login = UIButton()
        Login.setTitle("Log in", for: .normal)
        view.addSubview(Login)
        Login.setTitleColor(.white, for: .normal)
        Login.backgroundColor = .link
        Login.translatesAutoresizingMaskIntoConstraints=false
        Login.topAnchor.constraint(equalTo: password.bottomAnchor,constant: 30).isActive=true
        Login.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        Login.widthAnchor.constraint(equalToConstant: 100).isActive=true
        Login.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        //forgot your password
        let fp = UIButton()
        fp.setTitle("Forgot password?", for: .normal)
        view.addSubview(fp)
        fp.setTitleColor(.link, for: .normal)
        fp.translatesAutoresizingMaskIntoConstraints=false
        fp.topAnchor.constraint(equalTo: Login.bottomAnchor,constant: 30).isActive=true
        fp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        fp.widthAnchor.constraint(equalToConstant: 200).isActive=true
        fp.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        //or label
        let or = UILabel()
        or.text = "--------or--------"
        or.textAlignment = .center
        view.addSubview(or)
        or.translatesAutoresizingMaskIntoConstraints=false
        or.topAnchor.constraint(equalTo: fp.bottomAnchor,constant: 30).isActive=true
        or.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        or.widthAnchor.constraint(equalToConstant: 250).isActive=true
        or.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        //log in with facebook
        let Lwf = UIButton()
        Lwf.setTitle("Log in with facebook", for: .normal)
        view.addSubview(Lwf)
        Lwf.setTitleColor(.white, for: .normal)
        Lwf.backgroundColor = .link
        Lwf.translatesAutoresizingMaskIntoConstraints=false
        Lwf.topAnchor.constraint(equalTo: or.bottomAnchor,constant: 30).isActive=true
        Lwf.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        Lwf.widthAnchor.constraint(equalToConstant: 250).isActive=true
        Lwf.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        //signup
        let su = UIButton()
        fp.setTitle("Don't have account? sign up", for: .normal)
        fp.titleLabel?.font = UIFont(name: "San Francisco", size: 10)
        view.addSubview(su)
        su.setTitleColor(.link, for: .normal)
        su.translatesAutoresizingMaskIntoConstraints=false
        su.topAnchor.constraint(equalTo: Lwf.bottomAnchor,constant: 30).isActive=true
        su.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        su.widthAnchor.constraint(equalToConstant: 250).isActive=true
        su.heightAnchor.constraint(equalToConstant: 30).isActive=true
        
        
        
    }

}

