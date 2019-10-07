//
//  PhotoCell.swift
//  Instagram Profile
//
//  Created by Mohamed Elbana on 10/7/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation
import UIKit

class PhotoCell: UICollectionViewCell {
    
    let img: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "placeholder.png")
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageView.layer.cornerRadius = 8
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initUI()
    }
    
    private func initUI() {
        backgroundColor = .white
        layer.cornerRadius = 8
        addSubview(img)
        
        img.fillAnchors(toView: self, constant: 5)
        self.backgroundColor = UIColor.backSpace
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
