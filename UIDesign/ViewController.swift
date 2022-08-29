//
//  ViewController.swift
//  UIDesign
//
//  Created by Sandhya Kollati on 26/08/22.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    let canvas = CustomView()
    var collectionview: UICollectionView!
    var cellId = "Cell"
    var ArrayOfQuestions = ["Correct Answers","Incorrect Answers","Skipped Visited " ,"Partially Correct","Skipped Not Visited",]
    var arrayOfColors : [UIColor] = [.systemGreen ,.systemRed,.systemOrange ,.systemCyan , .systemYellow]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(canvas)
        canvas.backgroundColor = .clear
        canvas.frame = CGRect(x: 7, y: 80, width: view.frame.size.width - 14, height: view.frame.size.height - 600)
       collectionView()
       
    }
    func collectionView()
    {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: (view.frame.size.width/2) - 10  , height: (view.frame.size.width/9) )

        collectionview = UICollectionView(frame: CGRect(x: 10, y: 300, width: view.frame.size.width - 14, height: 300),collectionViewLayout: layout)
        collectionview.dataSource = self
        collectionview.delegate = self
        collectionview.register(CollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionview.showsVerticalScrollIndicator = false
        collectionview.backgroundColor = UIColor.white
        view.addSubview(collectionview)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath as IndexPath) as! CollectionViewCell
        cell.contentView.backgroundColor = .clear
        cell.configure(label: canvas.countOfQuestions[indexPath.row].description)
        cell.configuringLabel(label: ArrayOfQuestions[indexPath.row])
        cell.configureColor(color: arrayOfColors[indexPath.row])
        return cell
    }


}

