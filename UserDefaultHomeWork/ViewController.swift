//
//  ViewController.swift
//  UserDefaultHomeWork
//
//  Created by Karlis Cars on 22/11/2019.
//  Copyright © 2019 Karlis Cars. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    let defaults = UserDefaults.standard
    

    @IBOutlet weak var counterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = defaults.integer(forKey: "counterKey")
        counterLabel.text = "\(counter)"
    }

    @IBAction func addOneButtonPressed(_ sender: Any) {
        
        counter += 1
        counterLabel.text = "\(counter)"
        defaults.setValue(counter, forKey: "counterKey")
        
    }
    
}

