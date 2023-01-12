//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Bellynap on 1/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var majorTextField: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Chooses year from segmented control : First, Second, etc.
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        // Variable of type string which holds intorduction
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I am a \(majorTextField.text!) major. I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
       
       
       // Creates the alert where we pass in user input as introduction
       let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
       
       // A way to dismiss the box once it pops up
       let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
       
       // Passes this action to the alert controller so it can be dismissed
       alertController.addAction(action)
       
       present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
}

