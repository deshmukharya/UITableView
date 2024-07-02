//
//  ImageTableViewCell.swift
//  TableView
//
//  Created by E5000861 on 06/06/24.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
   
    static let imageIdentifier = "imageCell"
    @IBOutlet weak var showImage : UIImageView!
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
        showImage.image = nil
    }
    
    func setData(dataModel:Images){
        showImage.image = dataModel.images
    }

}
