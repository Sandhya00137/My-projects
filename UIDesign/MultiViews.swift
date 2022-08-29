//
//  MultiViews.swift
//  UIDesign
//
//  Created by Sandhya Kollati on 26/08/22.
//

import Foundation
import UIKit
class CustomView : UIView{
    
    
    var countOfQuestions: [Int] = [20,20,20,20,20]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUIDesign()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createUIDesign()
    }
    private func createUIDesign()
    {
        let firstView  = creatingViews(.systemGreen,CGFloat(countOfQuestions[0]) * 3.0, 15)
        firstView.layer.maskedCorners = [ .layerMinXMaxYCorner, .layerMinXMinYCorner]
        firstView.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
        
        let secondView = creatingViews(.systemOrange,CGFloat(countOfQuestions[2]) * 3.0, 0)
        secondView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        
        
        let thirdView = creatingViews(.systemCyan,CGFloat(countOfQuestions[3]) * 3.0 , 0)
        thirdView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        
        
        let fourthView = creatingViews(.systemYellow, CGFloat(countOfQuestions[4]) * 3.0, 0)
        fourthView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        if CGFloat(countOfQuestions[1]) * 3.0 ==  0
        {
            fourthView.layer.cornerRadius =  15
            fourthView.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        }
        if CGFloat(countOfQuestions[1]) * 3.0 ==  4
        {
            fourthView.layer.cornerRadius =  4
            fourthView.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        }
        
        
        let fifthView = creatingViews(.systemRed, CGFloat(countOfQuestions[1]) * 3.0, 14)
        fifthView.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        fifthView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        
        let stackview = UIStackView(arrangedSubviews: [
            firstView,secondView,thirdView,fourthView,fifthView
        ])
        addSubview(stackview)
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.alignment = .center
        stackview.spacing = 0
        stackview.clipsToBounds = true
        
        
        stackview.translatesAutoresizingMaskIntoConstraints = false
        
        
        stackview.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackview.heightAnchor.constraint(equalToConstant: 50).isActive =  true
        stackview.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
    }
    func creatingViews(_ color : UIColor , _ width : CGFloat,_ radius : CGFloat) -> UIView
    {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.backgroundColor = color
        view.widthAnchor.constraint(equalToConstant: width).isActive = true
        view.layer.cornerRadius = radius
        return view
    }
    
    
}
