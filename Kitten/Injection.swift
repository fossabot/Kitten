//
//  Injection.swift
//  Kitten
//
//  Created by Jason Idris on 6/1/18.
//  Copyright © 2018 Jason Idris. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    #if DEBUG
    @objc func injected() {
        for subview in self.view.subviews {
            subview.removeFromSuperview()
        }
        
        if let sublayers = self.view.layer.sublayers {
            for sublayer in sublayers {
                sublayer.removeFromSuperlayer()
            }
        }
        
        
        viewDidLoad()
    }
    #endif
}
