//
//  ViewController.swift
//  Proyecto 2
//
//  Created by Eduardo Quintero on 2/15/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vista: UIImageView!
    var imagesCat : [String] =  ["cat3","cat1","cat2"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      vista.image = UIImage(named: imagesCat[0])
        
        
    }

    @IBAction func butons(_ sender: UIButton) {
        if (sender.tag == 0 ){
            
           index -= 1
           if index < 0 {
            index = imagesCat.count - 1
            }
            
        }else{
            index += 1
            if index > imagesCat.count - 1 {
             index = 0
             }
           
            
        }
         vista.image = UIImage(named: imagesCat[index])
    }
    
}

