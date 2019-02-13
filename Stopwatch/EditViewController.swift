//
//  EditViewController.swift
//  Stopwatch
//
//  Created by Ashley Blacquiere
//  Copyright © 2019 Your School. All rights reserved.
//

import UIKit

protocol changeColor: class {
    func changeColorOrange(controller: UIViewController, textColor: UIColor)
}


class EditViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    weak var delegate: changeColor?
    
    
    @IBAction func changeColorAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
        var orangeText: UIColor
        orangeText = UIColor.orange
        
        delegate?.changeColorOrange(controller: self, textColor: orangeText)
    }
}
