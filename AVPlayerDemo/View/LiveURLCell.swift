//
//  LiveURLCell.swift
//  AVPlayerDemo
//
//  Created by ruijia lin on 6/27/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class LiveURLCell: UICollectionViewCell {
    
    let videoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 16
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.black.cgColor
        return imageView
    }()
    
    let videoDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "URL Link"
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
        setupConstraint()
    }
    
    private func setupView(){
        [videoImageView, videoDescription].forEach { self.addSubview($0)}
    }
    
    private func setupConstraint(){
        videoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        videoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        videoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive = true
        videoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        videoDescription.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        videoDescription.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        videoDescription.topAnchor.constraint(equalTo: videoImageView.bottomAnchor, constant: 10).isActive = true
        videoDescription.centerXAnchor.constraint(equalTo: videoImageView.centerXAnchor).isActive = true
        
    }
}
