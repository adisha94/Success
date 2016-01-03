//
//  ViewController.swift
//  Success
//
//  Created by Adish Betawar on 10/21/15.
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{
    @IBOutlet var tapView: UIView?
    @IBOutlet var swipeView: UIView?
    @IBOutlet var longPressView: UIView?
    @IBOutlet var pinchView: UIView?
    @IBOutlet var rotateView: UIView?
    @IBOutlet var panView: UIView?
    var lastRotation = CGFloat()
    let tapRec = UITapGestureRecognizer()
    let pinchRec = UIPinchGestureRecognizer()
    let swipeRec = UISwipeGestureRecognizer()
    let longPressRec = UILongPressGestureRecognizer()
    let rotateRec = UIRotationGestureRecognizer()
    let panRec = UIPanGestureRecognizer()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        tapRec.addTarget(self, action: "tappedView")
        pinchRec.addTarget(self, action: "pinchedView:")
        swipeRec.addTarget(self, action: "swipedView")
        longPressRec.addTarget(self, action: "longPressedView")
        rotateRec.addTarget(self, action: "rotatedView:")
        panRec.addTarget(self, action: "draggedView:")
        tapView!.addGestureRecognizer(tapRec)
        swipeView!.addGestureRecognizer(swipeRec)
        pinchView!.addGestureRecognizer(pinchRec)
        longPressView!.addGestureRecognizer(longPressRec)
        rotateView!.addGestureRecognizer(rotateRec)
        panView!.addGestureRecognizer(panRec)

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var pStorage: UITextField!
    @IBOutlet weak var nStorage: UITextField!
    @IBOutlet weak var kStorage: UITextField!
    @IBOutlet weak var qResult: UILabel!
    
    
//    @IBAction func BernoulliEquation()
//    {
//        
//    }

    
    @IBOutlet weak var ProbabilityChecker: UILabel!

    @IBOutlet weak var factorialAnswer: UILabel!
    @IBAction func ProbabilityV1()
    {
        print("probability function button pressed")
        factorialAnswer.text = "button pressed"
    }
    
    @IBAction func FactorialFunction()
    {
        print("Factorial Button pressed")
    }
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // gesture functions for application

    
    func tappedView()
    {
        let tapAlert = UIAlertController(title: "Tapped", message: "You just tapped the tap view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
    
    func swipedView()
    {
        let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped the swipe view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
    
    func longPressedView()
    {
        let tapAlert = UIAlertController(title: "Long Pressed", message: "You just long pressed the long press view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
    
    
    
    func rotatedView(sender:UIRotationGestureRecognizer)
    {
        var lastRotation = CGFloat()
        self.view.bringSubviewToFront(rotateView!)
        if(sender.state == UIGestureRecognizerState.Ended){
            lastRotation = 0.0;
        }
        let rotation = 0.0 - (lastRotation - sender.rotation)
        _ = rotateRec.locationInView(rotateView)
        let currentTrans = sender.view!.transform
        let newTrans = CGAffineTransformRotate(currentTrans, rotation)
        sender.view!.transform = newTrans
        lastRotation = sender.rotation
    }
    
    
    func draggedView(sender:UIPanGestureRecognizer)
    {
        self.view.bringSubviewToFront(sender.view!)
        let translation = sender.translationInView(self.view)
        sender.view!.center = CGPointMake(sender.view!.center.x + translation.x, sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: self.view)
    }
    
}
