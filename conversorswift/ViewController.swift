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
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var picture: UIImageView!
    var posicion:Int=0
    var total:Float = 0.0
    
    var gatitos:[UIImage]=[#imageLiteral(resourceName: "grief-and-loss"),#imageLiteral(resourceName: "persian-cats-and-kittens-1")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picture.image=gatitos[posicion]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func moveSlider(_ sender: Any) {
        
        //label.text=String(slider.value)
        
        
    }
    
    

    @IBAction func calcula(_ sender: Any) {
        
        var numero1:Int=0
        var numero2:Int=0
        
        if(!(texto1.text?.isEmpty)!){
            numero1=Int(texto1.text!)!
        }
        if(!(texto2.text?.isEmpty)!){
            numero2=Int(texto2.text!)!
        }
        total=(Float(numero1+numero2))
        total.multiply(by: slider.value)
        
        label.text=String(total)
        
        posicion+=1
        if(posicion==2){
            posicion=0
        }
        
        picture.image=gatitos[posicion]
        
        
    }
    

}

