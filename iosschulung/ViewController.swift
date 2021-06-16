//
//  ViewController.swift
//  iosschulung
//
//  Created by Ralf Lüsebrink on 16.06.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ueberschrift: UILabel!
    @IBOutlet weak var rbutton: UIButton!
    @IBOutlet weak var lbutton: UIButton!
    @IBOutlet weak var sw1: UISwitch!
    
    var ueberschrift2: UILabel!



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("test")
        ueberschrift.text="Taste drücken"
        
    }

    @IBAction func klick(_ sender: Any) {
        if sender as? UIButton == lbutton {
        ueberschrift.text="links"
        } else if sender as? UIButton == rbutton {
            ueberschrift.text="rechts"    }
    }
    
    
    @IBAction func swctrl(_ sender: Any) {
        
        if sw1.isOn{
            ueberschrift.text="Klick rechts oder links"
            sw1.setOn(false,animated:true)
        }
    }
    
}

