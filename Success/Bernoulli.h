//
//  Bernoulli.h
//  Bernoulli
//
//  Created by Adish Betawar on 8/3/15.
//  Copyright (c) 2015 Mega Saga Industries. All rights reserved.
//

#ifndef __Bernoulli__Bernoulli__
#define __Bernoulli__Bernoulli__

#include <stdio.h>
#include <math.h>
#include <limits.h> // probably calculus functions
int C (int total, int chosen);// combination
int Factorial(int n); // while the value of 'n' is not 1, keep multiplying through until they reach one. Then stop.
float Bernoulli(int n, int k, int p);
float SimpleProbability(int chosen, int total);

#endif /* defined(__Bernoulli__Bernoulli__) */
