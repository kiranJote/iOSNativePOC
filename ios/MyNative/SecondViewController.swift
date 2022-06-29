//
//  SecondViewController.swift
//  MyNative
//
//  Created by Kiran jote on 09/06/22.
//

import UIKit
import React

class SecondViewController: UIViewController {
    
    let nativeTextLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        nativeTextLabel.text = "iOS Native Label"
        nativeTextLabel.textAlignment = .center
        nativeTextLabel.font = UIFont.systemFont(ofSize: 30)
        
        let stackView = UIStackView(arrangedSubviews: [nativeTextLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        
        let constraint = [
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(constraint)
    }
    
}
