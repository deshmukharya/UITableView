//
//  TextTableViewCell.swift
//  TableView
//
//  Created by E5000861 on 06/06/24.
//

import UIKit

class TextTableViewCell: UITableViewCell {
    
    @IBOutlet weak var showText: UITextView!
    static let identifier = "textCell"
    
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
        showText.text = nil
    }
 
    func setData(dataModel: Text){
        showText.text = dataModel.text
        
    }
    
    
}
