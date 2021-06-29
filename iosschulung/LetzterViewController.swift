//
//  LetzterViewController.swift
//  iosschulung
//
//  Created by Ralf Lüsebrink on 29.06.21.
//

import Foundation
import UIKit




class ViewController2: UIViewController {
    
    
    @IBOutlet weak var button1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("test")
      
    }
   
    @IBAction func klick(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
   
}
