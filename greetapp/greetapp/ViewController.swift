//
//  ViewController.swift
//  greetapp
//
//  Created by Pipsa Korkiakoski on 03/09/2019.
//  Copyright © 2019 Pipsa Korkiakoski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var englishbtn: UIButton!
    @IBOutlet weak var sverigebtn: UIButton!
    @IBOutlet weak var finishbtn: UIButton!
    @IBOutlet weak var suprisebtn: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var edittext: UITextField!
    
    var teksti: String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

   
   
    @IBAction func presseng(_ sender: Any) {
        teksti = edittext.text!
        teksti = "Hi " + teksti
        label.text = teksti
    }
    @IBAction func pressfin(_ sender: Any) {
        teksti = edittext.text!
        teksti = "Terve " + teksti
        label.text = teksti
    }
    @IBAction func presssv(_ sender: Any) {
        teksti = edittext.text!
        teksti = "Hejsan " + teksti
        label.text = teksti
    }
    @IBAction func pressspr(_ sender: Any) {
        teksti = edittext.text!
        teksti = "Hola " + teksti
        label.text = teksti
    }
    
    
    

    
    
    
    
}

