//
//  ViewController.swift
//  iOS_prework
//
//  Created by Aryan  Gupta on 1/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstText: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var SchoolText: UITextField!
    @IBOutlet weak var YearSegment: UISegmentedControl!
    @IBOutlet weak var PetNumber: UILabel!
    @IBOutlet weak var PetStepper: UIStepper!
    @IBOutlet weak var MorePetSwitch: UISwitch!
    @IBOutlet weak var IntroButton: UIButton!
    @IBOutlet weak var MajorText: UITextField!
    
    @IBAction func UpdatePetStepper(_ sender: UIStepper) {
        PetNumber.text = "\(Int(sender.value/3))"
    }
    
    @IBAction func DisplayIntro(_ sender: UIButton) {
        let year = YearSegment.titleForSegment(at: YearSegment.selectedSegmentIndex)
        
        let intro = "My name is \(FirstText.text!) \(LastName.text!). I am a \(year!) year college student at \(SchoolText.text!) majoring in \(MajorText.text!). I own \(PetNumber.text!) dogs. It is \(MorePetSwitch.isOn) that I want more pets."
        
        // creates the alert
        let alert = UIAlertController(title: "My introduction", message: intro, preferredStyle: .alert)
        // close the pop-up box
        let action = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
        // passing the action to the alert
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
