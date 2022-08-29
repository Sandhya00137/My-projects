//
//  CollectionViewCell.swift
//  UIDesign
//
//  Created by Sandhya Kollati on 28/08/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(colorImageView)
        contentView.addSubview(questionCountLabel)
        contentView.addSubview(typeOfQuestionLabel)
    
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    let colorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = 5.0
        return imageView
    }()
    
    
    let questionCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize:16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let typeOfQuestionLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func layoutSubviews() {
        super.layoutSubviews()
        
        colorImageView.frame = CGRect(x: 10, y: 9, width: 10, height: 10)
        questionCountLabel.frame = CGRect(x: 25, y: 5, width: 30, height: 20)
        typeOfQuestionLabel.frame = CGRect(x: 55, y: 1, width: 140, height: 30)
    }
    public func configure(label : String)
    {
        questionCountLabel.text = label
    }
    public func configuringLabel(label : String)
    {
        typeOfQuestionLabel.text = label
    }
    public func configureColor(color : UIColor)
    {
        colorImageView.backgroundColor = color
    }

}


