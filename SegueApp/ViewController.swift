//
//  ViewController.swift
//  SegueApp
//
//  Created by Can Armağan on 27.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var gumballLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    var userName = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
                   // ok button
   
    
    @IBAction func okClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            if let destinationVC = segue.destination as? secondViewController {
                destinationVC.nameText2 = userName
            }
        }
    }


    
}

