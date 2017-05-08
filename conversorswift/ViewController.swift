//
//  ViewController.swift
//  conversorswift
//
//  Created by user128125 on 5/8/17.
//  Copyright © 2017 user128125. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var texto1: UITextField!
    @IBOutlet weak var texto2: UITextField!
    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func calcula(_ sender: Any) {
        
        let numero1:Int=Int(texto1.text!)!
        let numero2:Int=Int(texto2.text!)!
        let total:Int=numero1+numero2
        
        label.text=String(total)
        
        
    }

}

