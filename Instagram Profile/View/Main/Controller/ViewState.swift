//
//  ViewState.swift
//  Instagram Profile
//
//  Created by Mohamed Elbana on 10/7/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func initViewState() {
        view.addSubview(viewState)
        viewState.backgroundColor = UIColor.primary
        viewState.setShadowAndRadiusToView(isCornerRadius: true, isShadow: true, radius: 16)
        viewState.leadingAnchorEqual(toView: view, constant: 40)
        viewState.trailingAnchorEqual(toView: view, constant: 40)
        viewState.topBottomAnchorEqual(toView: viewHeader, constant: 40)
    }
    
    func initViewPosts() {
        viewPosts.addSubview(lblPostsNum)
        lblPostsNum.leadingAnchorEqual(toView: viewPosts)
        lblPostsNum.trailingAnchorEqual(toView: viewPosts)
        lblPostsNum.topAnchorEqual(toView: viewPosts)
        
        viewPosts.addSubview(lblPosts)
        lblPosts.leadingAnchorEqual(toView: viewPosts)
        lblPosts.trailingAnchorEqual(toView: viewPosts)
        lblPosts.topBottomAnchorEqual(toView: lblPostsNum, constant: 4)
        lblPosts.bottomAnchorEqual(toView: viewPosts)
    }
    
    func initViewFollowers() {
        viewFollowers.addSubview(lblFollowersNum)
        lblFollowersNum.leadingAnchorEqual(toView: viewFollowers)
        lblFollowersNum.trailingAnchorEqual(toView: viewFollowers)
        lblFollowersNum.topAnchorEqual(toView: viewFollowers)
        
        viewFollowers.addSubview(lblFollowers)
        lblFollowers.leadingAnchorEqual(toView: viewFollowers)
        lblFollowers.trailingAnchorEqual(toView: viewFollowers)
        lblFollowers.topBottomAnchorEqual(toView: lblFollowersNum, constant: 4)
        lblFollowers.bottomAnchorEqual(toView: viewFollowers)
    }
    
    func initViewFollowing() {
        viewFollowing.addSubview(lblFollowingNum)
        lblFollowingNum.leadingAnchorEqual(toView: viewFollowing)
        lblFollowingNum.trailingAnchorEqual(toView: viewFollowing)
        lblFollowingNum.topAnchorEqual(toView: viewFollowing)
        
        viewFollowing.addSubview(lblFollowing)
        lblFollowing.leadingAnchorEqual(toView: viewFollowing)
        lblFollowing.trailingAnchorEqual(toView: viewFollowing)
        lblFollowing.topBottomAnchorEqual(toView: lblFollowingNum, constant: 4)
        lblFollowing.bottomAnchorEqual(toView: viewFollowing)
    }
    
    func initStackViewState() {
        viewState.addSubview(stackViewState)
        stackViewState.fillAnchors(toView: viewState, constant: 10)
        
        stackViewState.addArrangedSubview(viewPosts)
        stackViewState.addArrangedSubview(viewFollowers)
        stackViewState.addArrangedSubview(viewFollowing)
    }
}
