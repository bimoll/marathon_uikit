//
//  ViewController.swift
//  uikit_marathon
//
//  Created by Matvey.Belkov on 01.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var rectangleView: UIView = {
        let view = GradientView()
        view.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }

    private func setUI() {
        view.backgroundColor = .white
        
        view.addSubview(rectangleView)
        NSLayoutConstraint.activate([
            rectangleView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rectangleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            rectangleView.widthAnchor.constraint(equalToConstant: 100),
            rectangleView.heightAnchor.constraint(equalTo: rectangleView.widthAnchor)
        ])
    }
}

