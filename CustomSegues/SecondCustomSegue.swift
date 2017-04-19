//
//  SecondCustomSegue.swift
//  CustomSegues
//
//  Created by Gabriel Theodoropoulos on 20/12/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

import UIKit

class SecondCustomSegue: UIStoryboardSegue {
    
    //    override func perform() {
    //        let firstVCView = sourceViewController.view as UIView!
    //        let thirdVCView = destinationViewController.view as UIView!
    //
    //        let window = UIApplication.sharedApplication().keyWindow
    //        window?.insertSubview(thirdVCView, belowSubview: firstVCView)
    //
    //        thirdVCView.transform = CGAffineTransformScale(thirdVCView.transform, 0.001, 0.001)
    //
    //
    //        UIView.animateWithDuration(0.5, animations: { () -> Void in
    //            firstVCView.transform = CGAffineTransformScale(thirdVCView.transform, 0.001, 0.001)
    //
    //        }) { (Finished) -> Void in
    //
    //            UIView.animateWithDuration(0.5, animations: { () -> Void in
    //                thirdVCView.transform = CGAffineTransformIdentity
    //
    //                }, completion: { (Finished) -> Void in
    //
    //                    firstVCView.transform = CGAffineTransformIdentity
    //                    self.sourceViewController.presentViewController(self.destinationViewController as UIViewController, animated: false, completion: nil)
    //            })
    //        }
    //
    //    }
    
    
//    override func perform() {
//        let firstVCView = sourceViewController.view as UIView!
//        let thirdVCView = destinationViewController.view as UIView!
//        
//        let window = UIApplication.sharedApplication().keyWindow
//        window?.insertSubview(thirdVCView, belowSubview: firstVCView)
//        
//        self.destinationViewController.modalTransitionStyle = .FlipHorizontal
//        self.sourceViewController.presentViewController(self.destinationViewController as UIViewController, animated: true, completion: nil)
//    }
    
    override func perform() {
        let firstVCView = sourceViewController.view as UIView!
        let thirdVCView = destinationViewController.view as UIView!
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(thirdVCView, belowSubview: firstVCView)
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1)
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseInOut)
        
        UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: window!, cache: false)
        self.sourceViewController.presentViewController(self.destinationViewController as UIViewController, animated: true, completion: nil)
        UIView.commitAnimations()
        
//        self.destinationViewController.modalTransitionStyle = .FlipHorizontal
//        self.sourceViewController.presentViewController(self.destinationViewController as UIViewController, animated: true, completion: nil)
    }

    
    func flip() {
        
        let firstVCView = sourceViewController.view as UIView!
        let thirdVCView = destinationViewController.view as UIView!
        
        let transitionOptions: UIViewAnimationOptions = [.TransitionFlipFromRight, .TransitionNone]
        
        UIView.transitionWithView(firstVCView, duration: 1.0, options: transitionOptions, animations: {
            firstVCView.hidden = true
        }) { (complition) in
            thirdVCView.hidden = false
        }
        
        UIView.transitionWithView(thirdVCView, duration: 1.0, options: transitionOptions, animations: {
            thirdVCView.hidden = true
        }) { (complition) in
            firstVCView.hidden = false
        }
    }
}
