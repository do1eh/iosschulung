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
    
    @IBOutlet weak var slider: UISlider!
    var ueberschrift2: UILabel!
    var  klickcounter=0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("test")
        let defaults = UserDefaults.standard
        klickcounter = defaults.integer(forKey: "klicker")
        ueberschrift.text="Taste drücken \(klickcounter)"
        
        
    }

    @IBAction func klick(_ sender: Any) {
        //alert()
        let defaults = UserDefaults.standard;

        if sender as? UIButton == lbutton {
            if klickcounter>0{
                klickcounter-=1
            }
        ueberschrift.text="links \(klickcounter)"
        } else if sender as? UIButton == rbutton {
            
                klickcounter+=1
            
            ueberschrift.text="rechts \(klickcounter)"    }
        defaults.setValue(klickcounter, forKey: "klicker")
    }
    
     
    @IBAction func swctrl(_ sender: Any) {
        
        if sw1.isOn{
            klickcounter=0
            ueberschrift.text="Klick rechts oder links \(klickcounter)"
            sw1.setOn(false,animated:true)
        }
    }
    
    
    @IBAction func sliderctrl(_ sender: Any) {
        if sender as? UISlider == slider{
          
            ueberschrift.alpha=CGFloat(slider.value)
            
        }
    }
    
    func alert() {
        let pop=UIAlertController(title: "Klick", message: "geklickt", preferredStyle: .actionSheet)
        
        pop.addAction(UIAlertAction(title: "OK", style: .default, handler: .none
                                    
        ))
        
        present(pop, animated: true, completion: .none)
    }
    
}

