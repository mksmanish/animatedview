//
//  madepod.swift
//  podcreate
//
//  Created by admin on 03/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class madepod: UIView {

  
    
    let colors : [UIColor] = [.blue, .orange, .yellow, .green, .blue, .purple, .red, .black, .lightGray, .orange]
    var colorCounter = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 1.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 10].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }

}
