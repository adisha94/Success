//
//  BernoulliWrapper.h
//  Success
//
//  Created by Adish Betawar on 12/22/15.;
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BernoulliWrapper : NSObject
-(NSInteger) C: (NSInteger) chosen total: (NSInteger) total;
-(NSInteger) P: (NSInteger) chosen total: (NSInteger) total;
-(NSInteger) Factorial: (NSInteger) n;
-(float) Bernoulli: (NSInteger) n k: (NSInteger) k p: (NSInteger) p;
-(float) SimpleProbability: (float) p q: (float) q;
@end