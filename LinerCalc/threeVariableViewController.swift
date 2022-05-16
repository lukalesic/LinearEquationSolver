//
//  threeVariableViewController.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import UIKit

class threeVariableViewController: UIViewController {
    @IBOutlet weak var threex1Field: UITextField!
    
    @IBOutlet weak var threex2Field: UITextField!
    @IBOutlet weak var threex3Field: UITextField!
    @IBOutlet weak var threerj1Field: UITextField!
  
    
    @IBOutlet weak var threey1Field: UITextField!
    @IBOutlet weak var threey2Field: UITextField!
    @IBOutlet weak var threey3Field: UITextField!
    @IBOutlet weak var threerj2Field: UITextField!
    
    @IBOutlet weak var threez1Field: UITextField!
    @IBOutlet weak var threez2Field: UITextField!
    @IBOutlet weak var threez3Field: UITextField!
    @IBOutlet weak var threerj3Field: UITextField!
    @IBOutlet weak var threerjesenjeplaceholder: UILabel!
    
    
    @IBAction func calculateThreeButton(_ sender: Any) {
        
        let tx1 = Float(threex1Field.text!)
        let tx2 = Float(threex2Field.text!)
        let tx3 = Float(threex3Field.text!)
        
        let ty1 = Float(threey1Field.text!)
        let ty2 = Float(threey2Field.text!)
        let ty3 = Float(threey3Field.text!)
        
        let tz1 = Float(threez1Field.text!)
        let tz2 = Float(threez2Field.text!)
        let tz3 = Float(threez3Field.text!)
        
        let trj1 = Float(threerj1Field.text!)
        let trj2 = Float(threerj2Field.text!)
        let trj3 = Float(threerj3Field.text!)
        
        
        
        let threeMod = threeVarModel(tx1: tx1 ?? 0, tx2: tx2 ?? 0, tx3: tx3 ?? 0, ty1: ty1 ?? 0, ty2: ty2 ?? 0, ty3: ty3 ?? 0, tz1: tz1 ?? 0, tz2: tz2 ?? 0, tz3: tz3 ?? 0, trj1: trj1 ?? 0, trj2: trj2 ?? 0, trj3: trj3 ?? 0)
        
        threerjesenjeplaceholder.text=threeMod.threeVarSolve().description
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Three variable calculator"
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
