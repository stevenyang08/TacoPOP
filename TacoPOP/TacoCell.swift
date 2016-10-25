//
//  TacoCollectionViewCell.swift
//  TacoPOP
//
//  Created by Steven Yang on 10/24/16.
//  Copyright © 2016 Steven Yang. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {

  @IBOutlet weak var tacoImage: UIImageView!
  @IBOutlet weak var tacoLabel: UILabel!
  
  var taco: Taco!
  
  func configureCell(taco: Taco) {
    
    self.taco = taco
    tacoLabel.text = taco.productName
    tacoImage.image = UIImage(named: "\(taco.proteinID.rawValue)")
  }
  
}
