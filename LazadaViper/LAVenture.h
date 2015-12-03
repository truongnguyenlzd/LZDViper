//
//  LAVenture.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LAVenture : NSObject

- (instancetype)initWithId:(NSUInteger)ventureID andName:(NSString *)ventureName;

@property (nonatomic, strong) NSString *ventureName;
@property (nonatomic, assign) NSUInteger ventureID;

@end
