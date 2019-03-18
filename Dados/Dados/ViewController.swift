//
//  ViewController.swift
//  Dados
//
//  Created by Nando on 3/2/19.
//  Copyright © 2019 n0813. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dado1: UIImageView!
    @IBOutlet weak var dado2: UIImageView!
    
    var randomDado1 : Int = 0
    var randomDado2 : Int = 0
    
    let dadosNombres : [String]
    let nFaces : UInt32
    
    required init?(coder aDecoder: NSCoder) {
        dadosNombres = ["die_face_1_T","die_face_2_T","die_face_3_T","die_face_4_T","die_face_5_T","die_face_6_T"]
        nFaces = UInt32(dadosNombres.count)
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.GenerarDados()
        
    }

    @IBAction func btnLanzar(_ sender: UIButton) {
    
        self.GenerarDados()
        
    }
    
    func GenerarDados() {
        
        let nFaces : UInt32 = UInt32(dadosNombres.count)
        
        randomDado1 = Int(arc4random_uniform(nFaces))
        randomDado2 = Int(arc4random_uniform(nFaces))
        
        dado1.image = UIImage(named: dadosNombres[randomDado1])
        dado2.image = UIImage(named: dadosNombres[randomDado2])
        
        
    }
    
    override func becomeFirstResponder() -> Bool {
        
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if motion == .motionShake {
            self.GenerarDados()
        }
        
    }
    
}

