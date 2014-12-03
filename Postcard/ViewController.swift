//
//  ViewController.swift
//  Postcard
//
//  Created by Dell Smith on 12/3/14.
//  Copyright (c) 2014 Dell Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButtonText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.redColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        sendMailButtonText.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

