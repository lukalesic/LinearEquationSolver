//
//  twoVariableViewController.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import UIKit

extension UITextField {

func addNumericAccessory(addPlusMinus: Bool) {
    let numberToolbar = UIToolbar()
    numberToolbar.barStyle = UIBarStyle.default

    var accessories : [UIBarButtonItem] = []

    if addPlusMinus {
        accessories.append(UIBarButtonItem(title: "+/-", style: UIBarButtonItem.Style.plain, target: self, action: #selector(plusMinusPressed)))
        accessories.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))   //add padding after
    }

    accessories.append(UIBarButtonItem(title: "Clear", style: UIBarButtonItem.Style.plain, target: self, action: #selector(numberPadClear)))
    accessories.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))   //add padding space
    accessories.append(UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: #selector(numberPadDone)))

    numberToolbar.items = accessories
    numberToolbar.sizeToFit()

    inputAccessoryView = numberToolbar
}

@objc func numberPadDone() {
    self.resignFirstResponder()
}

@objc func numberPadClear() {
    self.text = ""
}

@objc func plusMinusPressed() {
    guard let currentText = self.text else {
        return
    }
    if currentText.hasPrefix("-") {
        let offsetIndex = currentText.index(currentText.startIndex, offsetBy: 1)
        let substring = currentText[offsetIndex...]  //remove first character
        self.text = String(substring)
    }
    else {
        self.text = "-" + currentText
    }
}

}

class twoVariableViewController: UIViewController {

    @IBOutlet weak var twox1Field: UITextField! { didSet{twox1Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var twox2Field: UITextField!{ didSet{twox2Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var tworj1Field: UITextField!{ didSet{tworj1Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var twoy1Fied: UITextField!{ didSet{twoy1Fied?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var twoy2Field: UITextField!{ didSet{twoy2Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var tworj2Field: UITextField!{ didSet{tworj2Field?.addNumericAccessory(addPlusMinus: true)}}
    @IBOutlet weak var twoResultLabel: UILabel!
    
    
    @IBAction func calculateTwoButton(_ sender: Any) {
        
        
        let dx1 = Float(twox1Field.text!)
        let dx2 = Float(twox2Field.text!)
        let dy1 = Float(twoy1Fied.text!)
        let dy2 = Float(twoy2Field.text!)
        let drj1 = Float(tworj1Field.text!)
        let drj2 = Float(tworj2Field.text!)
        
        
        let twoMod = twoVarModel(dx1: dx1 ?? 0, dx2: dx2 ?? 0,  dy1: dy1 ?? 0, dy2: dy2 ?? 0,  drj1: drj1 ?? 0, drj2: drj2 ?? 0)
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
