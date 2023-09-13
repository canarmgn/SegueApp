//
//  2stViewController.swift
//  SegueApp
//
//  Created by Can Armağan on 27.05.2023.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var surnameText: UITextField!
    @IBOutlet weak var okClicked: UIButton!
    var userSurname = ""
    var nameText2 = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(nameText2)
    }
    
    @IBAction func okClicked(_ sender: Any) {
        userSurname = surnameText.text!
        performSegue(withIdentifier: "tothirdVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tothirdVC" {
            
            if let destinationVC = segue.destination as? thirdViewController {
                destinationVC.myNAme = nameText2
                
            }
            
            if let destinationVC = segue.destination as? thirdViewController {
                destinationVC.mySurname = userSurname
            }
        }
    }
}
