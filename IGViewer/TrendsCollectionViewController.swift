//
//  TrendsCollectionViewController.swift
//  IGViewer
//
//  Created by Admin on 25.02.2019.
//  Copyright © 2019 Roman Kozlov. All rights reserved.
//

import UIKit



class TrendsCollectionViewController: UICollectionViewController {
    
    let leftAndRightPaddings: CGFloat = 32.0
    let numberOfItemsPerRow: CGFloat = 3.0
    let heightAdjustment: CGFloat = 30.0
    
    struct Storyboard {
        static let explorePhotoCell = "TrendsPhotoCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView?.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let width = (collectionView.frame.width - leftAndRightPaddings) / numberOfItemsPerRow
        let layout = collectionViewLayout as? UICollectionViewFlowLayout
        layout!.itemSize = CGSize(width: width, height: (width + heightAdjustment))
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.explorePhotoCell, for: indexPath) as! TrendsPhotoCollectionViewCell
        
        cell.imageView.image = UIImage(named: "emptyCellImage.png")
    
        // Configure the cell
    
        return cell
    }

}
