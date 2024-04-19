//
//  WeatherCell.swift
//  myWeather
//
//  Created by iHRomnik on 14.02.2024.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var weather: UILabel!
    
    @IBOutlet weak var shadowView: UIView! {
        didSet {
            self.shadowView.layer.shadowOffset = .zero
            self.shadowView.layer.shadowOpacity = 0.75
            self.shadowView.layer.shadowRadius = 6
            self.shadowView.backgroundColor = .clear
        }
    }
    
    @IBOutlet weak var continerView: UIView! {
        didSet {
            self.continerView.clipsToBounds = true
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.shadowView.layer.shadowPath = UIBezierPath(ovalIn: self.shadowView.bounds).cgPath
        self.continerView.layer.cornerRadius = self.continerView.frame.width/2
    }
    
}


