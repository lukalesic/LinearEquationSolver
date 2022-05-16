//
//  twoVariableModel.swift
//  LinerCalc
//
//  Created by Luka Lešić on 02.03.2022..
//

import Foundation
import Accelerate



class twoVarModel{
    
    var dx1: Float
    var dx2: Float
    
    var dy1: Float
    var dy2: Float
    
    var drj1: Float
    var drj2: Float
    
    
   
    init(dx1: Float, dx2: Float, dy1: Float, dy2: Float, drj1: Float, drj2: Float){
        
        
        self.dx1 = dx1;   self.dx2 = dx2;
        
        
        self.dy1 = dy1;   self.dy2 = dy2;
        
        self.drj1 = drj1;   self.drj2 = drj2;
        
        
        
    }
    
    func twoVarSolve()->String{
        typealias LAInt = __CLPK_integer
        var A:[Float] = [
            dx1, dx2,
            dy1, dy2
         
        ]
        
            //ovdje rj1rj2
       var b:[Float] = [drj1, drj2]
        
        
      
         
        let equations = 2
        var numberOfEquations:LAInt = 2
        var columnsInA:       LAInt = 2
        var elementsInB:      LAInt = 2
        var bSolutionCount:   LAInt = 1
        var outputOk: LAInt = 0
        var pivot = [LAInt](repeating: 0, count: equations)
        
         
        sgesv_( &numberOfEquations, &bSolutionCount, &A, &columnsInA, &pivot, &b, &elementsInB, &outputOk)
         
        // If outputOK = 0, then everything went ok
      //  outputOk
        
       
       
       
        if outputOk == 0 {
            
            return " X = \(String(format: "%.2f", b[0])), Y = \(String(format: "%.2f", b[1]))"

            
        }
        
        else {
            
            return "System with infinite solutions!"
            
        }
        
        

        
    }
    
 
    
    /*
     
     
     /*
      
      
      */
     
     #include "f2c.h"
      14#include "blaswrap.h"
      15
      16/* Subroutine */ int sgesv_(integer *n, integer *nrhs, real *a, integer *lda,
      17    integer *ipiv, real *b, integer *ldb, integer *info)
      18{
      19    /* System generated locals */
      20    integer a_dim1, a_offset, b_dim1, b_offset, i__1;
      21
      22    /* Local variables */
      23    extern /* Subroutine */ int xerbla_(char *, integer *), sgetrf_(
      24        integer *, integer *, real *, integer *, integer *, integer *),
      25        sgetrs_(char *, integer *, integer *, real *, integer *, integer *
      26, real *, integer *, integer *);
      27
      99    /* Parameter adjustments */
     100    a_dim1 = *lda;
     101    a_offset = 1 + a_dim1;
     102    a -= a_offset;
     103    --ipiv;
     104    b_dim1 = *ldb;
     105    b_offset = 1 + b_dim1;
     106    b -= b_offset;
     107
     108    /* Function Body */
     109    *info = 0;
     110    if (*n < 0) {
     111    *info = -1;
     112    } else if (*nrhs < 0) {
     113    *info = -2;
     114    } else if (*lda < max(1,*n)) {
     115    *info = -4;
     116    } else if (*ldb < max(1,*n)) {
     117    *info = -7;
     118    }
     119    if (*info != 0) {
     120    i__1 = -(*info);
     121    xerbla_("SGESV ", &i__1);
     122    return 0;
     123    }
     124
     125/*     Compute the LU factorization of A. */
     126
     127    sgetrf_(n, n, &a[a_offset], lda, &ipiv[1], info);
     128    if (*info == 0) {
     129
     130/*        Solve the system A*X = B, overwriting B with X. */
     131
     132    sgetrs_("No transpose", n, nrhs, &a[a_offset], lda, &ipiv[1], &b[
     133        b_offset], ldb, info);
     134    }
     135    return 0;
     136
     137/*     End of SGESV */
     138
     139} /* sgesv_ */
     
     
     
     */
    
    
    
}
