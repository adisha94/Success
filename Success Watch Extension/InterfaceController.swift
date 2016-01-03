//
//  InterfaceController.swift
//  Success Watch Extension
//
//  Created by Adish Betawar on 1/3/16.
//  Copyright © 2016 Mega Saga Industries. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{

    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate()
    {

        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func Action()
    {
        
    }
    @IBOutlet var qPhoneStorage: WKInterfaceLabel!
    
}
