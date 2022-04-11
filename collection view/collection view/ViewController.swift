//
//  ViewController.swift
//  collection view
//
//  Created by Cumulations Technologies on 21/02/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as! myCollectionViewCell
        cell.configure(with: UIImage(named: "cat")!)
        return cell
    }
    
    @IBOutlet var collectionView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = layout
        layout.itemSize = CGSize(width: 120, height: 120)
        // Do any additional setup after loading the view.lf
        collectionView.delegate = self
        collectionView.dataSource=self
        collectionView.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: "myCollectionViewCell")
    }

}

extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
}
