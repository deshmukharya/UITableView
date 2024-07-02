//
//  DataModel.swift
//  TableView
//
//  Created by E5000861 on 31/05/24.
//

import Foundation
import UIKit

enum TableData {
    case text
    case images
    case imageWithTextModel
}

protocol DataManager {
    var type : TableData { get set}
}

struct Text : DataManager {
    var type : TableData
    var text : String

}
struct Images : DataManager{
    var type: TableData
    var images : UIImage
}

struct ImageWithTextModel : DataManager {
    var type: TableData
    var text:String
    var image:UIImage
}
struct TableViewData {
    
    static func receiveData() -> [DataManager] {
        
        let text1 = Text(type: .text, text: "Fethiye:- is a well known province of Mugla city. It is located on the Mediterranean coast of Turkey, 50 Km away from Dalaman airport. Fethiye is located on the old ancient city of Telmessos which you can see the ruins and theatre in the town. ")
        let text2 =  Text(type: .text, text: "Istanbul, largest city and principal seaport of Turkey. It was the capital of both the Byzantine Empire and the Ottoman Empire. ")
        
        let image1 = Images(type: .images, images: UIImage(named: "Fethiye")!)
        let image2 = Images(type: .images, images: UIImage(named: "Istanbul")!)
        
        let imageTextType1 = ImageWithTextModel(type: .imageWithTextModel, text: "Fethiye", image: UIImage(named: "Fethiye")!)
        let imageTextType2 = ImageWithTextModel(type: .imageWithTextModel, text: "Istanbul", image: UIImage(named: "Istanbul")!)
       
        return [text1,text2,image1,image2,imageTextType1,imageTextType2]
        
    }
}
