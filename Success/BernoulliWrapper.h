//
//  BernoulliWrapper.h
//  Success
//
//  Created by Adish Betawar on 12/22/15.;
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BernoulliWrapper : NSObject
-(int) C: (int) chosen total: (int) total;
-(int) P: (int) chosen total: (int) total;
-(float) Bernoulli: (NSInteger) n k: (NSInteger) k p: (float) p;
-(float) SimpleProbability: (float) p q: (float) q;
@end