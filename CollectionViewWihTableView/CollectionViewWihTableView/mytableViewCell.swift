//
//  mytableViewCell.swift
//  CollectionViewWihTableView
//
//  Created by Gitixa Chauhan on 31/03/23.
//

import UIKit

class mytableViewCell: UITableViewCell {

    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension mytableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! myCollectionViewCell
        cell.myCollectionViewImage.image = UIImage(named: eData[myCollectionView.tag].imageGallery[indexPath.row])
        cell.myCollectionViewImage.layer.cornerRadius = 50.0
        return cell
    }
    
    
}
