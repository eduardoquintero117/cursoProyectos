//
//  DetailViewController.swift
//  tablas22-Feb-2020
//
//  Created by Eduardo Quintero on 22/02/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var item : String = ""
    var vc : ViewController?
    
    @IBOutlet weak var productName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productName.text = item
        // Do any additional setup after loading the view.
    }
    
    @IBAction func agregar(_ sender: Any) {
        vc?.carrito.append(item)
        vc?.refresh()
        dismiss(animated: true, completion: nil)
        
    
    }
    
    
    @IBAction func cancelar(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    
    
    }
    
}
