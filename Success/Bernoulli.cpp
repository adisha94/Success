//
//  Bernoulli.cpp
//  Bernoulli
//
//  Created by Adish Betawar on 8/3/15.
//  Copyright (c) 2015 Mega Saga Industries. All rights reserved.
//

#include "Bernoulli.h"
#include <limits.h>
#include <math.h>
int C (int chosen, int total)
{
    int combo = Factorial(total) / ( Factorial(chosen) * Factorial(total - chosen) );
    return  combo;
}

int P (int chosen, int total)
{
    int permu = Factorial(total) / (Factorial(total - chosen));
    return permu;
}


int Factorial (int n)
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