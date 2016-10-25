//
//  nibLoadableView.swift
//  TacoPOP
//
//  Created by Steven Yang on 10/24/16.
//  Copyright © 2016 Steven Yang. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
  
  static var nibName: String {
    
    return String(describing: self)
  }
  
}
