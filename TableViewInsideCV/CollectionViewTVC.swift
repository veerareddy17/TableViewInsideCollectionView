//
//  CollectionViewTVC.swift
//  TableViewInsideCV
//
//  Created by Vera on 10/12/1939 Saka.
//  Copyright © 1939 XeperTechnologies. All rights reserved.
//

import UIKit

class CollectionViewTVC: UITableViewCell {

    @IBOutlet weak var collectionVC: UICollectionView!
    
   let imagesArray = [UIImage(named: "Holi-2"),UIImage(named: "Holi-2"),UIImage(named: "Holi-2"),UIImage(named: "Holi-2"),UIImage(named: "Holi-2")]
    @IBOutlet weak var cellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionVC.delegate = self
        collectionVC.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
extension CollectionViewTVC : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCVC", for: indexPath) as! CustomCVC
        cell.imgVC.image = self.imagesArray[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: self.collectionVC.frame.size.width/2 - 1, height: self.collectionVC.frame.size.width/2 - 1)
         //return CGSize((self.collectionVC.frame.size.width/2) - 1 , self.collectionVC.frame.size.width/2 - 1)
        
        return CGSize(width: self.collectionVC.frame.size.width, height: self.collectionVC.frame.size.width)
    }
    
    
}

