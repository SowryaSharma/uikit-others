//
//  collectionTableViewCell.swift
//  collection view in table view cell
//
//  Created by Cumulations Technologies on 21/02/22.
//

import UIKit

class collectionTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    func  configure(with models:[Model]) {
        self.models = models
        collectionView.reloadData()
    }
    
    static var identifier = "collectionTableViewCell"
    @IBOutlet var collectionView: UICollectionView!
    var models = [Model]()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate=self
        collectionView.dataSource=self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    static func nib()-> UINib{
        return UINib(nibName: "collectionTableViewCell", bundle: nil)
    }
    
}
