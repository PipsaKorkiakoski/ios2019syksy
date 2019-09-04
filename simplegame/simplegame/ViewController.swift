//
//  ViewController.swift
//  simplegame
//
//  Created by Pipsa Korkiakoski on 03/09/2019.
//  Copyright © 2019 Pipsa Korkiakoski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    var muuttuja : Int64 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func pressButton(_ sender: Any) {
        
        muuttuja += 1
        let muuttuja2 : String = "You have pressed the button :" + String(muuttuja) + " times"
        button.setTitle(muuttuja2, for: .normal)
    }
    
    
}

