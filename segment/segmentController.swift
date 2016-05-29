//
//  segmentController.swift
//  segment
//
//  Created by SSS on 5/28/16.
//  Copyright © 2016 SSS. All rights reserved.
//

import Foundation
import UIKit

class segment : UISegmentedControl {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 2.0))
       
            self.setBackgroundImage(UIImage(named: "Evan3"), forState: .Normal, barMetrics: .Default)
      
    
        
   
        
            }
    
    

}

extension UISegmentedControl {
    func removeBorders() {
        setBackgroundImage(imageWithColor(backgroundColor!), forState: .Normal, barMetrics: .Default)
        setBackgroundImage(imageWithColor(tintColor!), forState: .Selected, barMetrics: .Default)
        setDividerImage(imageWithColor(UIColor.clearColor()), forLeftSegmentState: .Normal, rightSegmentState: .Normal, barMetrics: .Default)
    }
    
    // create a 1x1 image with this color
    private func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRectMake(0.0, 0.0, 1.0, 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, rect);
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image
    }
}