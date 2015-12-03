//
//  LAVenture.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVenture.h"

@implementation LAVenture

- (instancetype)initWithId:(NSUInteger)ventureID andName:(NSString *)ventureName {
    if (self = [super init]) {
        self.ventureID = ventureID;
        self.ventureName = ventureName;
    }
    return self;
}

@end
