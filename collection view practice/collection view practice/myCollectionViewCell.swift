//
//  myCollectionViewCell.swift
//  collection view practice
//
//  Created by Cumulations Technologies on 24/02/22.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    static var identifier = "myCollectionViewCell"
    public func configure(with image:UIImage){
        imageView.image = image
    }
    static func nib()->UINib{
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }

}
