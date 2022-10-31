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
    
    @IBOutlet weak var theTitle: UILabel!
    
    //Buttons
    
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var del: UIButton!
    
   
    //keyboard
    
    //first row
    @IBOutlet weak var KQ: UIButton!
    @IBOutlet weak var KW: UIButton!
    @IBOutlet weak var KE: UIButton!
    @IBOutlet weak var KR: UIButton!
    @IBOutlet weak var KT: UIButton!
    @IBOutlet weak var KY: UIButton!
    @IBOutlet weak var KU: UIButton!
    @IBOutlet weak var KI: UIButton!
    @IBOutlet weak var KO: UIButton!
   @IBOutlet weak var KP: UIButton!
    
    
    //second Row
    @IBOutlet weak var KA: UIButton!
    @IBOutlet weak var KS: UIButton!
    @IBOutlet weak var KD: UIButton!
    @IBOutlet weak var KF: UIButton!
    @IBOutlet weak var KG: UIButton!
    @IBOutlet weak var KH: UIButton!
    @IBOutlet weak var KJ: UIButton!
    @IBOutlet weak var KK: UIButton!
    @IBOutlet weak var KL: UIButton!

    
    //third Row
    @IBOutlet weak var KZ: UIButton!
    @IBOutlet weak var KX: UIButton!
    @IBOutlet weak var KC: UIButton!
    @IBOutlet weak var KV: UIButton!
    @IBOutlet weak var KB: UIButton!
    @IBOutlet weak var KN: UIButton!
    @IBOutlet weak var KM: UIButton!


    
    var fullset = Array<UILabel>()
    
    //pokimon names btw
    let words = ["GLOOM","ZUBAT" ,"EEVEE"];
    
    var selection = ["","","","",""]
    var Head = 0;
    var offset = 0;
    var letters:[String : UIButton] = [:]
    var cindex :Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cindex = Int.random(in:0..<words.count);
       // cindex = 0;
        //Dictionary to link UIButtons to their letters

        letters["Q"] = KQ;
        letters["W"] = KW;
        letters["E"] = KE;
        letters["R"] = KR;
        letters["T"] = KT;
        letters["Y"] = KY;
        letters["U"] = KU;
        letters["I"] = KI;
        letters["O"] = KO;
        letters["P"] = KP;
        
        letters["A"] = KA;
        letters["S"] = KS;
        letters["D"] = KD;
        letters["F"] = KF;
        letters["G"] = KG;
        letters["H"] = KH;
        letters["J"] = KJ;
        letters["K"] = KK;
        letters["L"] = KL;
        
        letters["Z"] = KZ;
        letters["X"] = KX;
        letters["C"] = KC;
        letters["V"] = KV;
        letters["B"] = KB;
        letters["N"] = KN;
        letters["M"] = KM;

        
        
        
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
        
        
        fullset[Head+offset].layer.borderColor = UIColor.green.cgColor
        submit.isEnabled = false
        submit.backgroundColor = UIColor.lightGray ;
        submit.alpha = 0.5;

    }

   
    @IBAction func delfunc(_ sender: Any) {
        
        fullset[Head+offset].text = "";
        fullset[Head+offset].layer.borderColor = UIColor.darkGray.cgColor
        Head -= 1
        if(Head<0){
            Head = 0;
        }
        fullset[Head+offset].layer.borderColor = UIColor.green.cgColor
        makebtnavailable()

        
        
        
        
    }
    @IBAction func submit_word(_ sender: Any) {

        
        fullset[Head+offset].layer.borderColor = UIColor.darkGray.cgColor
        Head = 0
        validateLetters()
        increaseOffset()
        fullset[Head+offset].layer.borderColor = UIColor.green.cgColor
        submit.isEnabled = false
        
        

    }
    
    
    
    func addKey (_ key:String){

        
        
        fullset[Head+offset].text = key;
        fullset[Head+offset].layer.borderColor = UIColor.darkGray.cgColor
        Head += 1

        makebtnavailable()
        fullset[Head+offset].layer.borderColor = UIColor.green.cgColor
        
    }
    
    func makebtnavailable() {
        if(Head < 0){
            Head = 0;
        }
        if(Head<4){
            submit.isEnabled = false
            submit.backgroundColor = UIColor.lightGray ;
            submit.alpha = 0.5;
        }
        
        
        if(Head == 5){
            submit.isEnabled = true
            submit.backgroundColor = UIColor.darkGray ;
            submit.alpha = 1.0;
        }
        
        if(Head >= 4)
        {
            Head = 4;
        }
    }
    
    func increaseOffset () {
        if(offset < 25){
            offset += 5
            makebtnavailable()
        }else {
            
            // player have used all what he have
            let alert = UIAlertController(title: "Unlucky", message: "Hidden word was \(words[cindex])", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Play Again!", style: .default, handler: { action in
                switch action.style{
                    case .default:
                    
                    //Reset Letters
                    self.reset()
                    //Reset Keyboard
                    //Choose New Word
                    
                    case .cancel:
                    print("cancel")
                    
                    case .destructive:
                    print("destructive")
                    
                }
            }))
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
    }
    
    func reset(){
        
        //reset pointer color
        fullset[Head+offset].layer.borderColor = UIColor.darkGray.cgColor
        //reset letters
        
        for x in fullset {
            x.text = "";
            x.layer.borderWidth = 5.0
            x.backgroundColor = UIColor.white
        }
        
        //reset Keyboard
        
        for(key , value) in letters{
            value.backgroundColor = UIColor.darkGray;
        }
        cindex = Int.random(in:0..<words.count);
        Head = 0
        offset = 0;
        submit.isEnabled = false
        fullset[Head+offset].layer.borderColor = UIColor.green.cgColor
        
    }
    
    func validateLetters(){
        //theTitle.text? = "" ;
        var FinalWord = "";
        var word = words[cindex];
        for I in 0 ... 4 {
           
            
            
            //letters from Blocks
            var A = fullset[Head+I+offset].text ?? "00000" ;
            
            //Letters From the Word
            var B = Array(word)[I]
            
            
            if(A == "\(B)"){
                //we Have a Match
                fullset[Head+I+offset].backgroundColor = UIColor.cyan ;
                letters["\(B)"]?.backgroundColor = UIColor.cyan ;
                
                var ltr = word.firstIndex(of: Character(A)) ?? word.startIndex
                word.remove(at: ltr);
                word.insert("(", at: ltr);
                
            }else if(word.contains("\(A)")){
                
                fullset[Head+I+offset].backgroundColor = UIColor.orange ;
                letters["\(B)"]?.backgroundColor = UIColor.orange ;
                
                var ltr = word.firstIndex(of: Character(A)) ?? word.startIndex
                word.remove(at: ltr);
                word.insert("(", at: ltr);
                
                
                
            }else{
                //its not found color it to grey
                fullset[Head+I+offset].backgroundColor = UIColor.gray ;
            }

            
            
            if(word == "((((("){
               // theTitle.text? = "\(words[cindex])" ;
                
                let alert = UIAlertController(title: "Congratz", message: "You Found the Hidden Word", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Play Again!", style: .default, handler: { action in
                    switch action.style{
                        case .default:
                        
                        //Reset Letters
                        self.reset()
                        //Reset Keyboard
                        //Choose New Word
                        
                        case .cancel:
                        print("cancel")
                        
                        case .destructive:
                        print("destructive")
                        
                    }
                }))
                self.present(alert, animated: true, completion: nil)
            }
            
            }
            
        
        
        
        
        
        
        
    }
    
    
    
    //ibAction For keyboard
    
    @IBAction func KQ(_ sender: UIButton) {
        addKey("Q")
    }
    @IBAction func KW(_ sender: UIButton) {
        addKey("W")
    }
    @IBAction func KE(_ sender: UIButton) {
        addKey("E")
    }
    @IBAction func KR(_ sender: UIButton) {
        addKey("R")
    }
    @IBAction func KT(_ sender: UIButton) {
        addKey("T")
    }
    @IBAction func KY(_ sender: UIButton) {
        addKey("Y")
    }
    @IBAction func KU(_ sender: UIButton) {
        addKey("U")
    }
    @IBAction func KI(_ sender: UIButton) {
        addKey("I")
    }
    @IBAction func KO(_ sender: UIButton) {
        addKey("O")
    }
    @IBAction func KP(_ sender: UIButton) {
        addKey("P")
    }
    
    
    
    @IBAction func KA(_ sender: UIButton) {
        addKey("A")
    }
    @IBAction func KS(_ sender: UIButton) {
        addKey("S")
    }
    @IBAction func KD(_ sender: UIButton) {
        addKey("D")
    }
    @IBAction func KF(_ sender: UIButton) {
        addKey("F")
    }
    @IBAction func KG(_ sender: UIButton) {
        addKey("G")
    }
    @IBAction func KH(_ sender: UIButton) {
        addKey("H")
    }
    @IBAction func KJ(_ sender: UIButton) {
        addKey("J")
    }
    @IBAction func KK(_ sender: UIButton) {
        addKey("K")
    }
    @IBAction func KL(_ sender: UIButton) {
        addKey("L")
    }
    
    
    @IBAction func KZ(_ sender: UIButton) {
        addKey("Z")
    }
    @IBAction func KX(_ sender: UIButton) {
        addKey("X")
    }
    @IBAction func KC(_ sender: UIButton) {
        addKey("C")
    }
    @IBAction func KV(_ sender: UIButton) {
        addKey("V")
    }
    @IBAction func KB(_ sender: UIButton) {
        addKey("B")
    }
    @IBAction func KN(_ sender: UIButton) {
        addKey("N")
    }
    @IBAction func KM(_ sender: UIButton) {
        addKey("M")
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
}

