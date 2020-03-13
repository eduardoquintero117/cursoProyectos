//
//  ViewController.swift
//  opcionales
//
//  Created by Eduardo Quintero on 21/02/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        // nombres sombra
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        //print(items)
        
        for item in items {
            if item.hasSuffix("png"){
                print(item)
            }
        }
       
    }


}

//override func viewDidLoad() {
//       super.viewDidLoad()
//       // Do any additional setup after loading the view.
//       let fm = FileManager.default
//       let path = Bundle.main.resourcePath
//       // nombres sombra
//
//       if let path = path {
//
//           let items = try! fm.contentsOfDirectory(atPath: path)
//
//
//       }else{
//
//
//       }
//   }
