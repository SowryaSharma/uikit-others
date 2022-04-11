//
//  myTableViewCell.swift
//  collectionview in tableviewcell
//
//  Created by Cumulations Technologies on 24/02/22.
//

import UIKit

class myTableViewCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myCollectionViewCell.identifier, for: indexPath) as! myCollectionViewCell
        cell.configure(with: UIImage(named: "cat")!)
        return cell
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate=self
        collectionView.dataSource=self
        collectionView.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: myCollectionViewCell.identifier)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    static var identifier = "myTableViewCell"
    static func nib()->UINib{
        return UINib(nibName: "myTableViewCell", bundle: nil)
    }
//    public func configure(imageName: String){
//        
//    }
    
}
