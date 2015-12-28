//
//  BernoulliWrapper.mm
//  Success
//
//  Created by Adish Betawar on 12/22/15.
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

#import "BernoulliWrapper.h"
#import "Bernoulli.h"
@implementation BernoulliWrapper


-(int) C: (int) chosen total: (int) total
{
    int combo = Factorial(total) / Factorial(total - chosen);
    return combo;
}


-(int) P: (int) chosen total: (int) total
{
    int permu = Factorial(total) / Factorial(total - chosen);
    return permu;
}

-(float) Bernoulli: (NSInteger) n k: (NSInteger) k p: (float) p
{
    float result = Bernoulli(n, k, p);
    return result;
}


float SimpleProbability (float p, float q)
{
    float answer = p / q;
    NSLog(@"The answer is: \t %f", answer);
    return answer;
}




@end
