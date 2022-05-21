//
//  threeVariableModel.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import Foundation
import Accelerate


class threeVarModel{
    
    var tx1: Float
    var tx2: Float
    var tx3: Float
    
    var ty1: Float
    var ty2: Float
    var ty3: Float
    
    var tz1: Float
    var tz2: Float
    var tz3: Float
    
    var trj1: Float
    var trj2: Float
    var trj3: Float
    
    init(tx1: Float, tx2: Float, tx3: Float, ty1: Float, ty2: Float, ty3: Float, tz1: Float, tz2: Float, tz3: Float, trj1: Float, trj2: Float, trj3: Float){
        
        self.tx1 = tx1;   self.tx2 = tx2;   self.tx3 = tx3;
        
        
        self.ty1 = ty1;   self.ty2 = ty2;   self.ty3 = ty3;
        
        self.tz1 = tz1;   self.tz2 = tz2;   self.tz3 = tz3;
        
        self.trj1 = trj1; self.trj2 = trj2; self.trj3 = trj3;
        
    }
    
    
    
    


    func threeVarSolve()->String{
        
        typealias LAInt = __CLPK_integer

        var A:[Float] = [
            tx1, tx2, tx3,
            ty1, ty2, ty3,
            tz1, tz2, tz3
        ]
        var b:[Float] = [trj1, trj2, trj3]
      
//        var A:[Float] = [
//            7, 3, 5,
//            5, -5, 3,
//            -3, 2, -7
//        ]
//        var b:[Float] = [ 16, -8, 0 ]
//         
         
        let equations = 3
        var numberOfEquations:LAInt = 3
        var columnsInA:       LAInt = 3
        var elementsInB:      LAInt = 3
        var bSolutionCount:   LAInt = 1
        var outputOk: LAInt = 0
        var pivot = [LAInt](repeating: 0, count: equations)
         
        sgesv_( &numberOfEquations, &bSolutionCount, &A, &columnsInA, &pivot, &b, &elementsInB, &outputOk)
         
        var x1 = tx3/tx2/tx1
        var y1 = ty3/ty2/ty1
        var z1 = tz3/tz2/tz1
        var rj1 = trj3/trj2/trj1
        
        print(x1)
        print(y1)
        print(z1)
        print(rj1)
        
        if outputOk == 0 {
            
            return " X = \(String(format: "%.2f", b[0])), Y = \(String(format: "%.2f", b[1])), Z = \(String(format: "%.2f", b[2]))"
            
        }
        
        else {
            
            if x1==y1 && y1==z1 && z1==rj1 { return "System with infinite solutions!"}
            
            else{  return "System with no solutions!"}
            
        }
        
        
   
       
    }
}
