//
//  SimpleAppViewController.swift
//  Simple App
//
//  Created by Ben Tee on 2021/3/6.
//  Copyright © 2021 TKY co. All rights reserved.
//

import UIKit

class SimpleAppViewController: UIViewController {
 
    @IBOutlet weak var knowings: UILabel!
    
    @IBOutlet var theView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func press(_ sender: Any) {
        self.theView.backgroundColor = colorS.randomElement()
        self.knowings.text = sevenConditions [self.theView.backgroundColor ?? .black]
    }
}

