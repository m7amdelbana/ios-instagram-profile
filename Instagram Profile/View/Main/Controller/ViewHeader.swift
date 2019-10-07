//
//  ViewHeader.swift
//  Instagram Profile
//
//  Created by Mohamed Elbana on 10/7/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func initViewHeader() {
        view.addSubview(viewHeader)
        viewHeader.leadingAnchorEqual(toView: view, constant: 40)
        viewHeader.trailingAnchorEqual(toView: view, constant: 40)
        viewHeader.topAnchorEqual(toView: view, constant: 60)
    }
    
    func initImgProfile() {
        viewHeader.addSubview(imgProfile)
        imgProfile.leadingAnchorEqual(toView: viewHeader)
        imgProfile.centerYAnchorEqual(toView: viewHeader)
    }
    
    func initViewHeaderContent() {
        viewHeader.addSubview(viewHeaderContent)
        viewHeaderContent.leadingTrailingAnchorEqual(toView: imgProfile, constant: 20)
        viewHeaderContent.trailingAnchorEqual(toView: viewHeader)
        viewHeaderContent.topAnchorEqual(toView: viewHeader, constant: 20)
        viewHeaderContent.bottomAnchorEqual(toView: viewHeader, constant: 20)
    }
    
    func initLblName() {
        viewHeaderContent.addSubview(lblName)
        lblName.leadingAnchorEqual(toView: viewHeaderContent)
        lblName.trailingAnchorEqual(toView: viewHeaderContent)
        lblName.topAnchorEqual(toView: viewHeaderContent)
    }
    
    func initLblAddress() {
        viewHeaderContent.addSubview(lblAddress)
        lblAddress.leadingAnchorEqual(toView: viewHeaderContent)
        lblAddress.trailingAnchorEqual(toView: viewHeaderContent)
        lblAddress.topBottomAnchorEqual(toView: lblName, constant: 4)
    }
    
    func initLblBio() {
        viewHeaderContent.addSubview(lblBio)
        lblBio.leadingAnchorEqual(toView: viewHeaderContent)
        lblBio.trailingAnchorEqual(toView: viewHeaderContent)
        lblBio.topBottomAnchorEqual(toView: lblAddress, constant: 4)
    }
    
}
