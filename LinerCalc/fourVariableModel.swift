//
//  threeVariableModel.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import Foundation
import Accelerate


class fourVarModel{
    
    var fx1: Float
    var fx2: Float
    var fx3: Float
    var fx4: Float
    
    var fy1: Float
    var fy2: Float
    var fy3: Float
    var fy4: Float
    
    var fz1: Float
    var fz2: Float
    var fz3: Float
    var fz4: Float
    
    var fm1: Float
    var fm2: Float
    var fm3: Float
    var fm4: Float
    
    
    var frj1: Float
    var frj2: Float
    var frj3: Float
    var frj4: Float
    
    
    
    
    init(fx1: Float, fx2: Float, fx3: Float, fx4: Float, fy1: Float, fy2: Float, fy3: Float, fy4: Float, fz1: Float, fz2: Float, fz3: Float, fz4: Float, fm1: Float, fm2: Float, fm3: Float, fm4: Float ,frj1: Float, frj2: Float, frj3: Float, frj4: Float){
        
        self.fx1 = fx1;   self.fx2 = fx2;   self.fx3 = fx3;     self.fx4 = fx4;
        
        
        self.fy1 = fy1;   self.fy2 = fy2;   self.fy3 = fy3;     self.fy4 = fy4;
        
        self.fz1 = fz1;   self.fz2 = fz2;   self.fz3 = fz3;     self.fz4 = fz4;
        
        self.fm1 = fm1;     self.fm2 = fm2;     self.fm3 = fm3;     self.fm4 = fm4;
        
        self.frj1 = frj1; self.frj2 = frj2; self.frj3 = frj3;     self.frj4 = frj4;
        
    }
    
    
    
    


    func fourVarSolve()->String{
        
        typealias LAInt = __CLPK_integer

        var A:[Float] = [
           fx1, fx2, fx3, fx4,
           fy1, fy2, fy3, fy4,
           fz1, fz2, fz3, fz4,
           fm1, fm2, fm3, fm4
           
        ]
        var b:[Float] = [frj1, frj2, frj3, frj4]
      

         
        let equations = 4
        var numberOfEquations:LAInt = 4
        var columnsInA:       LAInt = 4
        var elementsInB:      LAInt = 4
        var bSolutionCount:   LAInt = 1
        var outputOk: LAInt = 0
        var pivot = [LAInt](repeating: 0, count: equations)
         
        sgesv_( &numberOfEquations, &bSolutionCount, &A, &columnsInA, &pivot, &b, &elementsInB, &outputOk)
        
        var x1 = fx4/fx3/fx2/fx1
        var y1 = fy4/fy3/fy2/fy1
        var z1 = fz4/fz3/fz2/fz1
        var m1 = fm4/fm3/fm2/fm1
        var rj1 = frj4/frj3/frj2/frj1
        
        print(x1)
        print(y1)
        print(z1)
        print(m1)
        print(rj1)
        
        
        if outputOk == 0 {
            
            return " X = \(String(format: "%.2f", b[0])) , Y = \(String(format: "%.2f", b[1])), Z = \(String(format: "%.2f", b[2])), m = \(String(format: "%.2f", b[3]))"
            
        }
        
        else {
            
            if x1==y1 && y1==z1 && z1==m1 && m1==rj1 { return "System with infinite solutions!"}
            else {return "System with no solutions!"}
            
        }
        
         
   

    }
}
