//
//  ViewController.swift
//  Proyecto 1
//
//  Created by Eduardo Quintero on 2/15/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit
// AppDelegate
//SceneDelegate  vita con la cual arnca la aplicaciojnn

class ViewController: UIViewController {
   
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var boton: UIButton!
    
    var counter: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        boton.layer.borderWidth = 1
        boton.layer.cornerRadius = 10
        
    }

    @IBAction func actionButton(_ sender: Any) {
       
        if counter  <= 10 {
            
            label1.text = "click \(counter)"
            counter += 1
        }else{
            boton.backgroundColor = .yellow
            
        }
    
    
    }
    
}

