//
//  MainViewController.swift
//  TacoPOP
//
//  Created by Steven Yang on 10/24/16.
//  Copyright © 2016 Steven Yang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, DataServiceDelegate {

  @IBOutlet weak var headerView: HeaderView!
  @IBOutlet weak var collectionView: UICollectionView!
  
  var ds: DataService = DataService.instance

  override func viewDidLoad() {
    super.viewDidLoad()

    ds.delegate = self
    ds.loadDeliciousTaco()
    ds.tacoArray.shuffle()
    
    collectionView.delegate = self
    collectionView.dataSource = self
    
    headerView.addDropShadow()

//    let nib = UINib(nibName: "TacoCollectionViewCell", bundle: nil)
//    collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
    
    collectionView.register(TacoCell.self)
    
  }
  
  func deliciousTacoData() {

    print("Delicious Taco data loaded!")
    collectionView.reloadData()
  }

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

    return ds.tacoArray.count
  }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
    cell.configureCell(taco: ds.tacoArray[indexPath.row])
    
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
      
      cell.shake()
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    return CGSize(width: 95, height: 95)
  }
  
}
