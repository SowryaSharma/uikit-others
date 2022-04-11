//
//  myCollectionViewCell.swift
//  collectionview in tableviewcell
//
//  Created by Cumulations Technologies on 24/02/22.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myImage: UIImageView!
    static var identifier = "myCollectionViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    static func nib()->UINib{
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }
    public func configure(with image:UIImage){
        self.myImage.image = image
    }

}
