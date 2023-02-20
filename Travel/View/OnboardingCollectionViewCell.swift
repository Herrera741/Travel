//
//  OnboardingCollectionViewCell.swift
//  Travel
//
//  Created by Sergio Herrera on 2/19/23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImageView: UIImageView!
    
    func configure(image: UIImage) {
        slideImageView.image = image
    }
    
}
