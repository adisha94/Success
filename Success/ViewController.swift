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

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var pStorage: UITextField!
    @IBOutlet weak var nStorage: UITextField!
    @IBOutlet weak var kStorage: UITextField!
    @IBOutlet weak var qStorage: UITextField!
    
//    @IBAction func BernoulliEquation()
//    {
//    }

    
    @IBOutlet weak var ProbabilityChecker: UILabel!

    @IBAction func ProbabilityV1()
    {
        var probabilityCheckerFloat = Float
    }
//    
//    @IBAction func FactorialFunction()
//    {
//        Factorial(Int32(nStorage.text!)!)
//    }
}

