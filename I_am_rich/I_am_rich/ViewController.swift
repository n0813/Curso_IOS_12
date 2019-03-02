//
//  ViewController.swift
//  I_am_rich
//
//  Created by Nando on 2/26/19.
//  Copyright © 2019 n0813. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnAlerta(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Aviso", message: "Tu ya eres rico", preferredStyle: .alert)
        
        let botonController = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(botonController)
        
        self.show(alertController, sender: nil)
        
        
    }
    
}

