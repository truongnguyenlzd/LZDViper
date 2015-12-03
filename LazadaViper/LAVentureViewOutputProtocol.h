//
//  VentureProtocol.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "LAVenture.h"

@protocol LAVentureViewOutputProtocol <NSObject>

- (void)didSelectVenture:(LAVenture *)venture;
- (void)setupView;

@end
