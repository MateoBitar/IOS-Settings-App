//
//  ViewController.swift
//  Assignment1
//
//  Created by Mateo Bitar on 13/11/2024.
//  Copyright © 2024 Mateo Bitar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorPreview.backgroundColor = UIColor.systemRed
        volumeLabel.text = "0%"
    }

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func pictureButton(_ sender: UIButton) {
        let controller = UIAlertController(title: "Select Picture: ", message: nil, preferredStyle: .actionSheet)
        
        let galleryAction = UIAlertAction(title: "From Gallery" , style: .default, handler: nil)
        
        let takePicAction = UIAlertAction(title: "Take a Picture" , style: .default, handler: nil)
        
        controller.addAction(galleryAction)
        controller.addAction(takePicAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
        }
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func textDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        nameField.resignFirstResponder()
    }
    @IBAction func saveButton(_ sender: UIButton) {
        if !self.nameField.text!.isEmpty {
            let msg1 = "Are you sure you want to save \(self.nameField.text!) as username?"
            
            let controller = UIAlertController(title: "Save Username?", message: msg1, preferredStyle: .alert)
            
            let yesAction = UIAlertAction(title: "Yes", style: .default, handler: nil)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
                action in
                self.nameField.text! = ""
            })
            
            controller.addAction(yesAction)
            controller.addAction(cancelAction)
            
            present(controller, animated: true, completion: nil)
            
        } else {
            
            let msg2 = "Username is Required."
            
            let controller = UIAlertController(title: "Something went wrong!", message: msg2, preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            controller.addAction(okAction)
            
            present(controller, animated: true, completion: nil)
            
        }
    }
    
    @IBOutlet weak var pushSwitch: UISwitch!
    @IBOutlet weak var emailSwitch: UISwitch!
    
    
    @IBAction func pushChanged(_ sender: UISwitch) {
        pushSwitch.setOn(sender.isOn, animated: true)
    }
    @IBAction func emailChanged(_ sender: UISwitch) {
        emailSwitch.setOn(sender.isOn, animated: true)
    }
    
    
    @IBOutlet weak var themeControl: UISegmentedControl!
    @IBOutlet weak var colorPreview: UIView!
    @IBOutlet weak var colorSlider: UISlider!
    
    @IBAction func themeChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            overrideUserInterfaceStyle = .light
            break
        case 1:
            overrideUserInterfaceStyle = .dark
            break
        default:
            overrideUserInterfaceStyle = .unspecified
            break
        }
    }
    @IBAction func colorChanged(_ sender: UISlider) {
        let hue = CGFloat(sender.value)
        let selectedColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        
        colorPreview.backgroundColor = selectedColor
    }
    
    
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var volumeSlider: UISlider!
    
    @IBAction func volumeChanged(_ sender: UISlider) {
        volumeLabel.text = "\(lroundf(sender.value))%"
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        let msg = "Are you sure you want to reset your settings?"
        
        let controller = UIAlertController(title: "Reset Settings?", message: msg, preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Yes", style: .destructive, handler: { action in
            self.nameField.text! = ""
            self.pushSwitch.isOn = true
            self.emailSwitch.isOn = true
            self.colorSlider.value = 0.0
            self.colorPreview.backgroundColor = UIColor.systemRed
            self.volumeSlider.value = 0.0
            self.volumeLabel.text! = "0%"
            self.overrideUserInterfaceStyle = .light
           self.themeControl.selectedSegmentIndex = 0
            
        })
        
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
}

