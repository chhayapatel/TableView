//
//  ViewController.swift
//  TableviewTextfield
//
//  Created by webwerks on 10/25/19.
//  Copyright © 2019 neosoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   static var arrNew = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func btnActionTaped(_ sender: Any) {
        let new = UIStoryboard(name: "Main", bundle: nil)
        let newVc = new.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        let obj = textfield.text
        print(obj!)
        newVc.arr.append(obj!)
        navigationController?.pushViewController(newVc, animated: true)
        
        
        
    }
    
}

