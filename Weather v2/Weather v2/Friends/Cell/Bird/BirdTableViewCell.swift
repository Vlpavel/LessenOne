//
//  BirdTableViewCell.swift
//  Weather v2
//
//  Created by Павел Власов on 19.09.2021.
//

import UIKit

class BirdTableViewCell: UITableViewCell {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var maImage: UIImageView!
    
  /*  var logoImage: [UIImage] = [
        UIImage(named: "logo1.png")!,
        UIImage(named: "logo2.png")!
    ]
    */
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
