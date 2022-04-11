//
//  myCollectionViewCell.swift
//  collection view
//
//  Created by Cumulations Technologies on 21/02/22.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(with image:UIImage){
        imageView.image = image
    }
    static func nib() -> UINib{
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }

}
