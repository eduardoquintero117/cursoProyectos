//
//  ViewController.swift
//  comunicatesViews
//
//  Created by Eduardo Quintero on 06/03/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func toSecondView(_ sender: UIButton) {
        
        //let secondView = SecondViewController()
        let secondView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier:  "SecondViewController") as? SecondViewController
           
        secondView?.delegate = self
        
        present(secondView!, animated: true)
    }
    
    func showData(_ name: String) {
          print(name)
      }
      
    
    
    
}

