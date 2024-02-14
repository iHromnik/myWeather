//
//  MyCitiesCell.swift
//  myWeather
//
//  Created by iHRomnik on 14.02.2024.
//

import UIKit

class MyCitiesCell: UITableViewCell {
    @IBOutlet weak var cityName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
