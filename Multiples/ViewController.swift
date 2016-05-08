//
//  ViewController.swift
//  Multiples
//
//  Created by AADITYA NARVEKAR on 5/7/16.
//  Copyright © 2016 Aaditya Narvekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var multipleTextField: UITextField!

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var multiple: Int = 0
    var currentSum: Int = 0
    let maxValue: Int = 75
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playButtonTapped(sender: AnyObject) {
        if (multipleTextField.text != nil && multipleTextField.text != "") {
            multiple = Int(multipleTextField.text!)!
            toggleDisplayStatus()
        }
        
    }

    @IBAction func addButtonTapped(sender: AnyObject) {
        currentSum += multiple
        if currentSum >= maxValue {
            currentSum = 0
            additionLabel.text = "Press Add to add!"
            multipleTextField.text = ""
            multipleTextField.resignFirstResponder()
            toggleDisplayStatus()
        } else {
            additionLabel.text = "\(currentSum - multiple) + \(multiple) = \(currentSum)"
        }
        
        
    }
    
    func toggleDisplayStatus()  {
        multiplesLogo.hidden = multiplesLogo.hidden ? false : true
        playButton.hidden = playButton.hidden ? false : true
        multipleTextField.hidden = multipleTextField.hidden ? false : true
        
        additionLabel.hidden = additionLabel.hidden ? false : true
        addButton.hidden = addButton.hidden ? false : true
        
        
    }
}

