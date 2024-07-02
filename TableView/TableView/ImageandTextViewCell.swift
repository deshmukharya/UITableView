//
//  ImageandTextViewCell.swift
//  TableView
//
//  Created by E5000861 on 13/06/24.
//

import UIKit

class ImageandTextViewCell: UITableViewCell {

    static let cellIdentifier = "ImageTextCell"
    
  
    
    @IBOutlet weak var imgView: UIImageView!
    
    
    @IBOutlet weak var txtLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
           super.prepareForReuse()
           txtLabel.text = nil
           imgView.image = nil
       }
       
       func setData(dataModel: ImageWithTextModel) {
           txtLabel.text = dataModel.text
           imgView.image = dataModel.image
       }

}
