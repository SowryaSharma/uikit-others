//
//  ViewController.swift
//  collection view practice
//
//  Created by Cumulations Technologies on 24/02/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath) as! myCollectionViewCell
        cell.configure(with: UIImage(named: "cat")!)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate=self
        collectionView.dataSource=self
        collectionView.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: "myCollectionViewCell")
    }


}

