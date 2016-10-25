//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Steven Yang on 10/24/16.
//  Copyright © 2016 Steven Yang. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
  
  func addDropShadow() {
    
    //Implementation
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.7
    layer.shadowOffset = CGSize.zero
    layer.shadowRadius = 5
  }
}
