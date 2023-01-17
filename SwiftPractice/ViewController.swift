//
//  ViewController.swift
//  SwiftPractice
//
//  Created by 刘添晴 on 1/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Swtich and Stepper
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    // Labels
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    // Segmened control
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    // Pets Label
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    // Stepper action
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }

    
    
    // Introduce Self Button action
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am studying in \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
                
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
//        var myAlert = UIAlertController(title: "My Introduction", message: String("My name is Grace Liu and I am in Cornell. I am currently in my second year and I own 3 pets. I would like to have more pets!"), preferredStyle: UIAlertController.Style.alert);
//
//        let okAction = UIAlertAction(title: "Hi there!", style: UIAlertAction.Style.default){(Action) in
//            print("Ok button tapped");
//        }
//
//        myAlert.addAction(okAction);
//
//        self.present(myAlert, animated: true, completion: nil);
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

