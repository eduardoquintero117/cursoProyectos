//
//  SecondViewController.swift
//  comunicatesViews
//
//  Created by Eduardo Quintero on 06/03/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func showData(_ name: String)
}

class SecondViewController: UIViewController {

   
    @IBOutlet weak var nameTF : UITextField!
    
    
    var testButton : UIButton = {
          var b = UIButton(type: .system)
           b.setTitle("Haz click", for: .normal)
           b.backgroundColor = .red
           b.translatesAutoresizingMaskIntoConstraints = false
       
           
           return b
       }()
       
       var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        
        view.addSubview(testButton)
        testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
         testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    }
    

 @IBAction func saveName (_ sender: UIButton ){
    
    if let name = nameTF.text{
        delegate?.showData(name)
        dismiss(animated: true, completion: nil)
    }
    
    
    }

}
