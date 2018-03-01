//
//  ViewController.swift
//  TableViewInsideCV
//
//  Created by Vera on 10/12/1939 Saka.
//  Copyright © 1939 XeperTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblVC: UITableView!
     
    let imagesArray = [UIImage(named: "Holi-2"),UIImage(named: "Holi-2"),UIImage(named: "Holi-2"),UIImage(named: "Holi-2"),UIImage(named: "Holi-2")]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblVC.register(UINib(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "SecondCell")
        tblVC.estimatedRowHeight = 200
       self.tblVC.delegate = self
       self.tblVC.dataSource = self
    }

}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        if section == 0{
//            return 1
//        }else if section == 1{
//            return 5
//        }
        return  section == 0 ? 1 : 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            let cell = tblVC.dequeueReusableCell(withIdentifier: "CollectionViewTVC", for: indexPath) as! CollectionViewTVC
            cell.cellView.layer.cornerRadius = 1.0
            cell.cellView.layer.borderWidth = 1.0
            cell.cellView.layer.borderColor = UIColor.groupTableViewBackground.cgColor
            cell.collectionVC.reloadData()
            return cell
        }
            let secondCell = tblVC.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as! SecondCell
            secondCell.secondCellImg.image = self.imagesArray[indexPath.row]
            return secondCell
        
       
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    
    
}

