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
    
    
    
    @IBAction func Reset()
    {
        print(" Q label has been reset to its initial conditions.")

        qResult.textColor.colorWithAlphaComponent(2.34)
        qResult.text = ""
    }

}
