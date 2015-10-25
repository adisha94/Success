//
//  Bernoulli.cpp
//  Bernoulli
//
//  Created by Adish Betawar on 8/3/15.
//  Copyright (c) 2015 Mega Saga Industries. All rights reserved.
//

#include "Bernoulli.h"


int C(int chosen, int total)
{
    int combo = Factorial(total) / ( Factorial(chosen) * Factorial(total - chosen) );
    return  combo;
}

int Factorial(int n)
{
    // user inputs value for n
    int answer = 1;
    if (n == 0 || n == 1)
    {
        return answer;
    }
    else
    {
        return answer = n * Factorial(n - 1);
    }
}


float Bernoulli(int n, int k, float p)
{
    float q = 1 - p;
    float Bernoulli = C(n,k) * pow(p,k) * pow(q, n-k); // check for error
    return Bernoulli;
}


float SimpleProbability(int chosen, int total)
{
    float answer = chosen / total;
    return answer;
}