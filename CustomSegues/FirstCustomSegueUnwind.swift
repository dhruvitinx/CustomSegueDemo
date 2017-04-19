//
//  FirstCustomSegueUnwind.swift
//  CustomSegues
//
//  Created by Gabriel Theodoropoulos on 20/12/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

import UIKit

class FirstCustomSegueUnwind: UIStoryboardSegue {
 
    override func perform() {
        // Assign the source and destination views to local variables.
        let secondVCView = self.sourceViewController.view as UIView!
        let firstVCView = self.destinationViewController.view as UIView!
     
        let screenWidth = UIScreen.mainScreen().bounds.size.width
//        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(firstVCView, aboveSubview: secondVCView)
        
        
        // Animate the transition.
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            firstVCView.frame = CGRectOffset(firstVCView.frame, screenWidth, 0.0)
            secondVCView.frame = CGRectOffset(secondVCView.frame, screenWidth, 0.0)
            
            }) { (Finished) -> Void in
                
                self.sourceViewController.dismissViewControllerAnimated(false, completion: nil)
        }
    }
    
}
