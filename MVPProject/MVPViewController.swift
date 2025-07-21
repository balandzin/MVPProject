//
//  MVPViewController.swift
//  MVPProject
//
//  Created by Антон Баландин on 5.06.25.
//

import UIKit
import SnapKit

class MVPViewController: UIViewController, MVPViewInput {
    
    var output: MVPViewOutput!
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Hello world"
        label.textColor = .black
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap Me", for: .normal)
        button.addTarget(self, action: #selector(buttonDidTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func showNumbers(_ numbers: [Int]) {
        let numbersString = numbers.map { String($0) }.joined(separator: ",")
        textLabel.text = numbersString
    }

    
    @objc func buttonDidTapped() {
        output.buttonDidTapped()
    }
}

private extension MVPViewController {
    
    func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(textLabel)
        view.addSubview(button)
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            make.centerX.equalTo(view)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(textLabel.snp.bottom).offset(100)
            make.centerX.equalTo(view)
        }
    }
}

