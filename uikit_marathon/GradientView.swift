//
//  GradientView.swift
//  uikit_marathon
//
//  Created by Matvey.Belkov on 01.07.2023.
//

import UIKit

class GradientView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    var cornerRadius: CGFloat = 0 {
        didSet {
            gradientLayer.cornerRadius = cornerRadius
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupGradientLayer()
        setupShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGradientLayer() {
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.purple.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        layer.addSublayer(gradientLayer)
    }
    
    private func setupShadow() {
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowRadius = CGFloat(15)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer.frame = bounds
    }
}
