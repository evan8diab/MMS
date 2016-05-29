//
//  ViewController.swift
//  segment
//
//  Created by SSS on 5/28/16.
//  Copyright © 2016 SSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var seg: segment!
    
    @IBOutlet weak var notification: verticalButton!
    @IBOutlet weak var view3: UIView!
    @IBOutlet var buttonViews: UIView!
//    @IBAction func segmentChange(sender: AnyObject) {
//        
//        if (seg.selectedSegmentIndex == 0){
//            seg.setBackgroundImage(UIImage(named: "Evan3"), forState: .Normal, barMetrics: .Default)}
//        if (seg.selectedSegmentIndex == 1){
//            seg.setBackgroundImage(UIImage(named: "Evan2"), forState: .Normal, barMetrics: .Default)}
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
//        if (seg.selectedSegmentIndex == 2){
//            seg.setBackgroundImage(UIImage(named: "Evan01-1"), forState: .Normal, barMetrics: .Default)}
//        //seg.reloadInputViews()
//    }
//
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!
    
    @IBAction func b1(sender: AnyObject) {
        b1.setBackgroundImage(UIImage(named: "1"), forState: .Selected)
        buttonViews.bringSubviewToFront(b1)
         buttonViews.sendSubviewToBack(b2)
        view1.hidden = false
        view2.hidden = true
        view3.hidden = true
        
      
        
        
    }
    
    @IBAction func b2(sender: AnyObject) {
          b2.setBackgroundImage(UIImage(named: "2"), forState: .Selected)
     
            buttonViews.bringSubviewToFront(b3)
        buttonViews.sendSubviewToBack(b2)
        buttonViews.sendSubviewToBack(b1)
        view1.hidden = true
        view2.hidden = false
        view3.hidden = true
        
    }

 
    
    @IBAction func b3(sender: AnyObject) {
          b3.setBackgroundImage(UIImage(named: "3"), forState: .Selected)
            buttonViews.bringSubviewToFront(b2)
        buttonViews.sendSubviewToBack(b1)
        view1.hidden = true
        view2.hidden = true
        view3.hidden = false
        //notification.deleteBadge(notification)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         buttonViews.addSubview(b1)
         buttonViews.addSubview(b2)
         buttonViews.addSubview(b3)
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        notification.addbadge(notification, count: "1")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

