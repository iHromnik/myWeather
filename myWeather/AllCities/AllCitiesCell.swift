//
//  AllCitiesCell.swift
//  myWeather
//
//  Created by iHRomnik on 14.02.2024.
//

import UIKit

class AllCitiesCell: UITableViewCell {

    
    @IBOutlet var cityTitleLabel: UILabel! {
        didSet {
            self.cityTitleLabel.textColor = UIColor.yellow
        }
    }
    
    @IBOutlet var cityEmblemView: UIImageView! {
        didSet{
            self.cityEmblemView.layer.borderColor = UIColor.white.cgColor
            self.cityEmblemView.layer.borderWidth = 2
        }
    }
    
    func confogure(city: String, emblem: UIImage) {
        self.cityTitleLabel.text = city
        self.cityEmblemView.image = emblem
//        self.backgroundColor = UIColor.blue
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.cityTitleLabel.text = nil
        self.cityEmblemView.image = nil
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        self.cityEmblemView.clipsToBounds = true
        self.cityEmblemView.layer.cornerRadius = cityEmblemView.frame.width/2
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
