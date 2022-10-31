//
//  ViewController.swift
//  Project1
//
//  Created by omar on 10/30/22.
//

import UIKit

class ViewController: UIViewController {

    //group 1
    @IBOutlet weak var A: UILabel!
    @IBOutlet weak var B: UILabel!
    @IBOutlet weak var C: UILabel!
    @IBOutlet weak var D: UILabel!
    @IBOutlet weak var E: UILabel!
    
    //group 2
    @IBOutlet weak var A1: UILabel!
    @IBOutlet weak var B1: UILabel!
    @IBOutlet weak var C1: UILabel!
    @IBOutlet weak var D1: UILabel!
    @IBOutlet weak var E1: UILabel!

    //group 3
    @IBOutlet weak var A2: UILabel!
    @IBOutlet weak var B2: UILabel!
    @IBOutlet weak var C2: UILabel!
    @IBOutlet weak var D2: UILabel!
    @IBOutlet weak var E2: UILabel!
    
    //group 4
    @IBOutlet weak var A3: UILabel!
    @IBOutlet weak var B3: UILabel!
    @IBOutlet weak var C3: UILabel!
    @IBOutlet weak var D3: UILabel!
    @IBOutlet weak var E3: UILabel!
    
    //group 5
    @IBOutlet weak var A4: UILabel!
    @IBOutlet weak var B4: UILabel!
    @IBOutlet weak var C4: UILabel!
    @IBOutlet weak var D4: UILabel!
    @IBOutlet weak var E4: UILabel!
    
    
    
    //group 6
    @IBOutlet weak var A5: UILabel!
    @IBOutlet weak var B5: UILabel!
    @IBOutlet weak var C5: UILabel!
    @IBOutlet weak var D5: UILabel!
    @IBOutlet weak var E5: UILabel!
    
    
    
    
    
    
    var fullset = Array<UILabel>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//adding all UILabels to a single set
        fullset.append(A)
        fullset.append(B)
        fullset.append(C)
        fullset.append(D)
        fullset.append(E)
        fullset.append(A1)
        fullset.append(B1)
        fullset.append(C1)
        fullset.append(D1)
        fullset.append(E1)
        fullset.append(A2)
        fullset.append(B2)
        fullset.append(C2)
        fullset.append(D2)
        fullset.append(E2)
        fullset.append(A3)
        fullset.append(B3)
        fullset.append(C3)
        fullset.append(D3)
        fullset.append(E3)
        fullset.append(A4)
        fullset.append(B4)
        fullset.append(C4)
        fullset.append(D4)
        fullset.append(E4)
        fullset.append(A5)
        fullset.append(B5)
        fullset.append(C5)
        fullset.append(D5)
        fullset.append(E5)


        for x in fullset {
            x.text = "";
            x.layer.borderWidth = 5.0
            x.layer.borderColor = UIColor.darkGray.cgColor
        }
        
        
        
        E.layer.borderWidth = 5.0
        E.layer.borderColor = UIColor.darkGray.cgColor

        
    }


}

