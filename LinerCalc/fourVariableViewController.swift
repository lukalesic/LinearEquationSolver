//
//  fourVariableViewController.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import UIKit

class fourVariableViewController: UIViewController {

    @IBOutlet weak var fx1Field: UITextField!
    @IBOutlet weak var fy1Field: UITextField!
    @IBOutlet weak var fz1Field: UITextField!
    @IBOutlet weak var fm1Field: UITextField!
    
    @IBOutlet weak var frj1Field: UITextField!
    
    
    @IBOutlet weak var fx2Field: UITextField!
    
    @IBOutlet weak var fy2Field: UITextField!
    @IBOutlet weak var fz2Field: UITextField!
    
    @IBOutlet weak var fm2Field: UITextField!
    @IBOutlet weak var frj2Field: UITextField!
    
    
    @IBOutlet weak var fx3Field: UITextField!
    
    @IBOutlet weak var fy3Field: UITextField!
    
    @IBOutlet weak var fz3Field: UITextField!
    
    @IBOutlet weak var fm3Field: UITextField!
    
    @IBOutlet weak var frj3Field: UITextField!
    
    
    @IBOutlet weak var fx4Field: UITextField!
    
    @IBOutlet weak var fy4Field: UITextField!
    
    @IBOutlet weak var fz4Field: UITextField!
    
    @IBOutlet weak var fm4Field: UITextField!
    
    @IBOutlet weak var frj4Field: UITextField!
    
    
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
        
        
        
        let fourMod = fourVarModel(fx1: fx1!, fx2: fx2!, fx3: fx3!, fx4: fx4!, fy1: fy1!, fy2: fy2!, fy3: fy3!, fy4: fy4!, fz1: fz1!, fz2: fz2!, fz3: fz3!, fz4: fz4!, fm1: fm1!, fm2: fm2!, fm3: fm3!, fm4: fm4!, frj1: frj1!, frj2: frj2!, frj3: frj3!, frj4: frj4!)
        
        fResultLabel.text=fourMod.fourVarSolve().description
        
        
        
        
        
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
