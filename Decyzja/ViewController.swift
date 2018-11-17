//
//  ViewController.swift
//  Decyzja
//
//  Created by Jerzy Pilarczyk on 30.09.2018.
//  Copyright © 2018 Jerzy Pilarczyk. All rights reserved.
//

import UIKit
let Gra = Engine()


class ViewController: UIViewController {
    
    var present = Gra.getPresentsituation()
    func update()
    {
        
        
        
        dialBox.text = Gra.getSituation(sitNo: present).answers
        
        but1.setTitle(Gra.getSituation(sitNo: present).question1, for: .normal)
        but2.setTitle(Gra.getSituation(sitNo: present).question2, for: .normal)
        but3.setTitle(Gra.getSituation(sitNo: present).question3, for: .normal)
        but4.setTitle(Gra.getSituation(sitNo: present).question4, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBOutlet weak var dialBox: UILabel!
    
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    
    @IBAction func deciFun(_ sender: UIButton) {
      
        present = Gra.eventEngine(presentSitu: present, decysion: sender.tag)
        update()
        
        
        
    }
    
    
}

