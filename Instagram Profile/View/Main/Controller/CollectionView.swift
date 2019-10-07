//
//  CollectionViewDelegate.swift
//  Instagram Profile
//
//  Created by Mohamed Elbana on 10/7/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CELL_ID, for: indexPath) as! PhotoCell
        return cell
    }
    
    func initCollectionContainer() {
        view.addSubview(viewCollection)
        
        viewCollection.leadingAnchorEqual(toView: view, constant: 20)
        viewCollection.trailingAnchorEqual(toView: view, constant: 20)
        viewCollection.topBottomAnchorEqual(toView: viewState, constant: 20)
        viewCollection.bottomAnchorEqual(toView: view)
        viewCollection.clipsToBounds = true
    }
    
    func initCollectionView() {
        let frame = CGRect(x: 0, y: 0, width: viewCollection.frame.width, height: self.viewCollection.frame.height)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        let size = self.view.frame.width / 3 - (40/3)
        layout.itemSize = CGSize(width: size, height: size)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: CELL_ID)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = UIColor.backSpace
        
        viewCollection.addSubview(collectionView)
        
        collectionView.leadingAnchorEqual(toView: viewCollection)
        collectionView.trailingAnchorEqual(toView: viewCollection)
        collectionView.topAnchorEqual(toView: viewCollection)
        collectionView.bottomAnchorEqual(toView: viewCollection)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
    }
}

