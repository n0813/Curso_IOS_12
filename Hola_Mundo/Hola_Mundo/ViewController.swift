//
//  ViewController.swift
//  Hola_Mundo
//
//  Created by Nando on 3/1/19.
//  Copyright © 2019 n0813. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnAccion(_ sender: UIButton) {
        
        lblMensaje.text = "Hola Mundo!"
    }
    
}

