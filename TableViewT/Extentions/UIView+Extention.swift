//
//  UIView+Extention.swift
//  TableViewT
//
//  Created by Sami Ahmed on 18/12/2023.
//

import Foundation
import UIKit
extension UIView {
     @IBInspectable var cornerRadius: CGFloat {
         get{return self.cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
