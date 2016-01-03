//
//  BernoulliSwift.swift
//  Success
//
//  Created by Adish Betawar on 1/3/16.
//  Copyright © 2016 Mega Saga Industries. All rights reserved.
//

import Foundation
class Bernoulli_Swift
{
    func C ( chosen: Int, total: Int) -> Int
    {
        let combo = Factorial(total) / ( Factorial(chosen) * Factorial(total - chosen) );
        return  combo;
    }
    
    func  P (chosen: Int, total: Int) -> Int
    {
        let permu = Factorial(total) / (Factorial(total - chosen));
        return permu;
    }
    
    
    func Factorial (n: Int) -> Int
    {
    // user inputs value for n
        var answer: Int = 1
        if (n == 0 || n == 1)
        {
            return answer
        }
        else
        {
            answer = n * Factorial(n - 1);
            return answer
        }
    }
    
    
    func Bernoulli (int n: Int, int k: Int, float p: Float) -> Float
    {
        let q: Float = 1 - p;
        var Bernoulli_var: Float = C(n,total: k) * pow(k,k) * pow(k, n-k); // check for error
        return Bernoulli_var;
    }
    
    
    float SimpleProbability (float p, float q)
    {
        return p / q;
    }
}