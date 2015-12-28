//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Dace Willmott on 12/27/15.
//  Copyright © 2015 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var farenheightValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    
    var celsiusValue: Double? {
        if let value = farenheightValue {
            return (value - 32) * (5/9)
        } else {
            return nil
        }
    }
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = "\(value)"
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func fahrenheightFieldEditingChanged(textField: UITextField) {
      if let text = textField.text where !text.isEmpty {
        celsiusLabel.text = text
      } else {
        celsiusLabel.text = "???"
      }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
}

