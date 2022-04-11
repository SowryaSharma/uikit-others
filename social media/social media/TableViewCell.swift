//
//  TableViewCell.swift
//  social media
//
//  Created by Cumulations Technologies on 25/02/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    static var identifier = "TableViewCell"

    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var pfi: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.pfi.layer.cornerRadius=5.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    public func configure(){
        self.pic.image = UIImage(named: "cat")
    }
    static func nib()->UINib{
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
}
