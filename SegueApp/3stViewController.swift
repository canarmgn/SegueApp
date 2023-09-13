//
//  3stViewController.swift
//  SegueApp
//
//  Created by Can Armağan on 27.05.2023.
//

import UIKit

class thirdViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    var myNAme = ""
    var mySurname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name: \(myNAme)"
        surnameLabel.text = "Surname: \(mySurname)"
        
    }
    
    
    
    
    
}


