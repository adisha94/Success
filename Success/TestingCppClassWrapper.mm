//
//  TestingCppClassWrapper.mm
//  Success
//
//  Created by Adish Betawar on 12/22/15.
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

#import "TestingCppClassWrapper.h"
#include "TestCpp.hpp"
@interface TestCppClassWrapper()
@property TestCppClass *cppItem;
@end
@implementation TestCppClassWrapper
- (instancetype)initWithTitle:(NSString*)title
{
    if (self = [super init]) {
        self.cppItem = new TestCppClass(std::string([title cStringUsingEncoding:NSUTF8StringEncoding]));
    }
    return self;
}
- (NSString*)getTitle
{
    return [NSString stringWithUTF8String:self.cppItem->getTtile().c_str()];
}
- (void)setTitle:(NSString*)title
{
    self.cppItem->setTitle(std::string([title cStringUsingEncoding:NSUTF8StringEncoding]));
}
@end
