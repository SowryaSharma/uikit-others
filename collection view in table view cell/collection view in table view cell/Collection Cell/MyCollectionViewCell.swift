//
//  MyCollectionViewCell.swift
//  collection view in table view cell
//
//  Created by Cumulations Technologies on 21/02/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
//    @IBOutlet var myLabel:UILabel!
    @IBOutlet var myImageView:UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    static func nib()->UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(with model:Model){
//        self.myLabel.text=model.text
        self.myImageView.image = UIImage(named: model.imageName)
    }
}
