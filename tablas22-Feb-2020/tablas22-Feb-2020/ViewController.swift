//
//  ViewController.swift
//  tablas22-Feb-2020
//
//  Created by Eduardo Quintero on 22/02/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nombre = ["Juan","Raul","Mackensi","new"]
    var carrito = [String]()
    
   
    @IBOutlet weak var tablita: UITableView!
    
    @IBOutlet weak var labelCarrito: UILabel!
    // patron delegado
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombre.count
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = nombre[indexPath.row]
        
        if indexPath.row % 2 == 0{
            cell.backgroundColor = .blue
        }else{
            cell.backgroundColor = .cyan
        }
        
        return cell
    }
    
    
    func refresh(){
        print(carrito)
        labelCarrito.text = "Total de productos: \(carrito.count)"
    }
           
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        //cell?.accessoryType = .checkmark
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailView = segue.destination  as! DetailViewController
    
        
        let myIndexPath = tablita.indexPathForSelectedRow
        detailView.item = nombre[myIndexPath!.row]
        detailView.vc = self
    }
    
    
}
