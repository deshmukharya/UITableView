//
//  ViewController.swift
//  TableView
//
//  Created by E5000861 on 31/05/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    
    
    @IBOutlet weak var table1 : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUp()
        receiveData()
        // Do any additional setup after loading the view.
    }
    
    var arrayOfResults = [DataManager]()
    
    func SetUp() {
        table1.rowHeight = UITableView.automaticDimension
        table1.delegate = self
        table1.dataSource = self
    }
    func receiveData(){
        arrayOfResults = TableViewData.receiveData()
        print(arrayOfResults)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let data = arrayOfResults[indexPath.row]
        switch data.type{
        case .text:
            return 100
        case .images:
            return 150
        case .imageWithTextModel:
            return 150
        }
        
    }
    
}
// Inside TextTableViewCell.swift

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfResults.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let data = arrayOfResults[indexPath.row]
        print(data.type)
switch data.type{
    case .text:
        guard let cell =  tableView.dequeueReusableCell(withIdentifier:TextTableViewCell.identifier ) as? TextTableViewCell else {
                return UITableViewCell(frame: .zero)
            }
            print("Text Section")
            cell.setData(dataModel: data as! Text)
            return cell
        
        case .images:
            guard let cell =  tableView.dequeueReusableCell(withIdentifier:ImageTableViewCell.imageIdentifier ) as? ImageTableViewCell else {
                return UITableViewCell(frame: .zero)
            }
            cell.setData(dataModel: data as! Images)
            print("Image Section")
            return cell
        
       case .imageWithTextModel:
             guard let cell =  tableView.dequeueReusableCell(withIdentifier:ImageandTextViewCell.cellIdentifier ) as? ImageandTextViewCell else {
                 return UITableViewCell(frame: .zero)
             }
             cell.setData(dataModel: data as! ImageWithTextModel)
             print("ImageText Section")
             return cell
    }
    }
}
