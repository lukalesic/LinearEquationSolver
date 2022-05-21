//
//  fourVariableViewController.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import UIKit

class fourVariableViewController: UIViewController {

    @IBOutlet weak var fx1Field: UITextField!{ didSet{fx1Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var fy1Field: UITextField!{ didSet{fy1Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var fz1Field: UITextField!{ didSet{fz1Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var fm1Field: UITextField!{ didSet{fm1Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var frj1Field: UITextField!{ didSet{frj1Field?.addNumericAccessory(addPlusMinus: true)}}
    
    
    @IBOutlet weak var fx2Field: UITextField!{ didSet{fx2Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fy2Field: UITextField!{ didSet{fy2Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var fz2Field: UITextField!{ didSet{fz2Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fm2Field: UITextField!{ didSet{fm2Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var frj2Field: UITextField!{ didSet{frj2Field?.addNumericAccessory(addPlusMinus: true)}}
    
    
    @IBOutlet weak var fx3Field: UITextField!{ didSet{fx3Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fy3Field: UITextField!{ didSet{fy3Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fz3Field: UITextField!{ didSet{fz3Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fm3Field: UITextField!{ didSet{fm3Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var frj3Field: UITextField!{ didSet{frj3Field?.addNumericAccessory(addPlusMinus: true)}}
    
    
    @IBOutlet weak var fx4Field: UITextField!{ didSet{fx4Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fy4Field: UITextField!{ didSet{fy4Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fz4Field: UITextField!{ didSet{fz4Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var fm4Field: UITextField!{ didSet{fm4Field?.addNumericAccessory(addPlusMinus: true)}}
    
    @IBOutlet weak var frj4Field: UITextField!{ didSet{frj4Field?.addNumericAccessory(addPlusMinus: true)}}
    
    
    @IBOutlet weak var fResultLabel: UILabel!
    
    @IBAction func Calc4Button(_ sender: Any) {
        
        
        let fx1 = Float(fx1Field.text!)
        let fx2 = Float(fx2Field.text!)
        let fx3 = Float(fx3Field.text!)
        let fx4 = Float(fx4Field.text!)
        
        let fy1 = Float(fy1Field.text!)
        let fy2 = Float(fy2Field.text!)
        let fy3 = Float(fy3Field.text!)
        let fy4 = Float(fy4Field.text!)
        
        let fz1 = Float(fz1Field.text!)
        let fz2 = Float(fz2Field.text!)
        let fz3 = Float(fz3Field.text!)
        let fz4 = Float(fz4Field.text!)
        
        let fm1 = Float(fm1Field.text!)
        let fm2 = Float(fm2Field.text!)
        let fm3 = Float(fm3Field.text!)
        let fm4 = Float(fm4Field.text!)
        
        let frj1 = Float(frj1Field.text!)
        let frj2 = Float(frj2Field.text!)
        let frj3 = Float(frj3Field.text!)
        let frj4 = Float(frj4Field.text!)
        
        
        
        let fourMod = fourVarModel(fx1: fx1 ?? 0, fx2: fx2 ?? 0, fx3: fx3 ?? 0, fx4: fx4 ?? 0, fy1: fy1 ?? 0, fy2: fy2 ?? 0, fy3: fy3 ?? 0, fy4: fy4 ?? 0, fz1: fz1 ?? 0, fz2: fz2 ?? 0, fz3: fz3 ?? 0, fz4: fz4 ?? 0, fm1: fm1 ?? 0, fm2: fm2 ?? 0, fm3: fm3 ?? 0, fm4: fm4 ?? 0, frj1: frj1 ?? 0, frj2: frj2 ?? 0, frj3: frj3 ?? 0, frj4: frj4 ?? 0)
        
        fResultLabel.text=fourMod.fourVarSolve().description
        
        
        
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
