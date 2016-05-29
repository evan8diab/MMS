//
//  vertical buttons.swift
//  segment
//
//  Created by SSS on 5/28/16.
//  Copyright © 2016 SSS. All rights reserved.
//

import Foundation
import UIKit
import MIBadgeButton_Swift

class verticalButton : MIBadgeButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
     //   fatalError("init(coder:) has not been implemented")
        setupButton(self)
    }
    
  
    func setupButton (button : MIBadgeButton){
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    
        button.titleEdgeInsets = UIEdgeInsetsMake(30, -25, -25,-25);
        button.titleLabel!.adjustsFontSizeToFitWidth = true
        
        }
    
    func addbadge (button : MIBadgeButton , count : String){
    button.badgeString = count
    
    }
    func deleteBadge (button : MIBadgeButton){
    button.badgeString = nil
    }

}