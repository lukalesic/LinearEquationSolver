//
//  twoVariableViewController.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import UIKit

class twoVariableViewController: UIViewController {

    @IBOutlet weak var twox1Field: UITextField!
    @IBOutlet weak var twox2Field: UITextField!
    @IBOutlet weak var tworj1Field: UITextField!
    @IBOutlet weak var twoy1Fied: UITextField!
    @IBOutlet weak var twoy2Field: UITextField!
    @IBOutlet weak var tworj2Field: UITextField!
    @IBOutlet weak var twoResultLabel: UILabel!
    
    
    @IBAction func calculateTwoButton(_ sender: Any) {
        
        
        let dx1 = Float(twox1Field.text!)
        let dx2 = Float(twox2Field.text!)
        
        let dy1 = Float(twoy1Fied.text!)
        let dy2 = Float(twoy2Field.text!)
        
     
        let drj1 = Float(tworj1Field.text!)
        let drj2 = Float(tworj2Field.text!)
        
        
        
        let twoMod = twoVarModel(dx1: dx1!, dx2: dx2!,  dy1: dy1!, dy2: dy2!,  drj1: drj1!, drj2: drj2!)
        
        twoResultLabel.text=twoMod.twoVarSolve().description
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Two variable calculator"

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
