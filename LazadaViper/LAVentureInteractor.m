//
//  LAVentureInteractor.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVentureInteractor.h"

@implementation LAVentureInteractor

- (void)configApplicationFromVenture:(LAVenture*)venture {
    [self.ventureDataManager storeDataForVenture:venture];
}

@end
