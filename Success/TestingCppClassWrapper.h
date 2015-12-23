//
//  TestingCppClassWrapper.h
//  Success
//
//  Created by Adish Betawar on 12/22/15.
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface TestCppClassWrapper : NSObject
- (instancetype)initWithTitle:(NSString*)title;
- (NSString*)getTitle;
- (void)setTitle:(NSString*)title;
@end