//
//  ViewController.swift
//  Success
//
//  Created by Adish Betawar on 10/21/15.
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate
{
//    @IBOutlet var tapView: UIView?
//    @IBOutlet var swipeView: UIView?
    @IBOutlet var longPressView: UIView?
//    @IBOutlet var pinchView: UIView?
//    @IBOutlet var rotateView: UIView?
//    @IBOutlet var panView: UIView?
    var lastRotation = CGFloat()
//    let tapRec = UITapGestureRecognizer()
//    let pinchRec = UIPinchGestureRecognizer()
//    let swipeRec = UISwipeGestureRecognizer()
    let longPressRec = UILongPressGestureRecognizer()
//    let rotateRec = UIRotationGestureRecognizer()
//    let panRec = UIPanGestureRecognizer()

    @IBOutlet weak var pStorage: UITextField!
    @IBOutlet weak var nStorage: UITextField!
    @IBOutlet weak var kStorage: UITextField!
    @IBOutlet weak var qResult: UILabel!

    @IBOutlet weak var ProbabilityChecker: UILabel!

    @IBOutlet weak var factorialAnswer: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        tapRec.addTarget(self, action: "tappedView")
//        pinchRec.addTarget(self, action: "pinchedView:")
//        swipeRec.addTarget(self, action: "swipedView")
        longPressRec.addTarget(self, action: "longPressedView")
//        rotateRec.addTarget(self, action: "rotatedView:")
//        panRec.addTarget(self, action: "draggedView:")
        
         self.pStorage.delegate = self;
         self.nStorage.delegate = self;
         self.kStorage.delegate = self;
        
        let tap: UIGestureRecognizer = UIGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning()
    {
        // Dispose of any resources that can be recreated.
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func ProbabilityV1()
    {
        print("Probability Function button pressed")
        factorialAnswer.text = "button pressed"
    }
    
    @IBAction func FactorialFunction()
    {
        print("Factorial Function Button pressed")
    }
    
    
    
    @IBAction func Reset()
    {
        print(" Q label has been reset to its initial conditions.")

        qResult.textColor.colorWithAlphaComponent(2.34)
        qResult.text = "Resetted"
        qResult.text = "--------"
    }
    
    @IBAction func Reset2()
    {
        print(" Q label has been reset to its initial conditions.")
        
    }
    
    
    func dismissKeyBoardWithReturn(textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return false
    }
    
    func dismissKeyboardWithTap(textFeild: UITextField)
    {
        view.endEditing(true)
    }
    
}
