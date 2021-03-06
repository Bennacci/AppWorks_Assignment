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

    @IBOutlet weak var changeColor: UILabel!
    
    
    override func viewDidLoad() {
//        containerView.layer.backgroundColor = findColor[self.knowings.text]
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func press(_ sender: Any) {
        self.knowings.text = textS.randomElement()!
        self.changeColor.backgroundColor = colorS.randomElement()!

//        self.changeColor.backgroundColor = UIColor.okok
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

