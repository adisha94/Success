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
        var answer: Int = 1;
        if (n == 0 || n == 1)
        {
            return answer;
        }
        else
        {
            return answer = n * Factorial(n - 1);
        }
    }
    
    
    float Bernoulli (int n, int k, float p)
    {
    float q = 1 - p;
    float Bernoulli = C(n,k) * pow(p,k) * pow(q, n-k); // check for error
    return Bernoulli;
    }
    
    
    float SimpleProbability (float p, float q)
    {
    return p / q;
    }
}