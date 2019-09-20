//
//  ViewController.swift
//  lab3t2
//
//  Created by Pipsa Korkiakoski on 10/09/2019.
//  Copyright © 2019 Pipsa Korkiakoski. All rights reserved.
//

import UIKit
import SafariServices
import MessageUI


class ViewController: UIViewController, MFMailComposeViewControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var url: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var call: UITextField!
    var teksti : String = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func urlbtn(_ sender: Any) {
        teksti = url.text!
        var urli : URL = URL(string: teksti)!;
        
        showurl(for: teksti)

    }
    @IBAction func emailbtn(_ sender: Any) {
        teksti = email.text!
        sendEmail(teksti: self.teksti)
        
    }
    @IBAction func camerabtn(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    @IBAction func callbtn(_ sender: Any) {
        teksti = call.text!
        
        guard let number = URL(string: "tel://" + teksti) else { return }
        UIApplication.shared.open(number)
    }
    func showurl(for url : String){
        guard let url = URL(string: url) else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    func sendEmail(teksti : String) {
        print(teksti)
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([teksti])
            mail.setMessageBody("<p>You're so awesome!</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            // show failure alert
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
}

