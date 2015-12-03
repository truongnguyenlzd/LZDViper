//
//  LAVentureInteractor.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVentureInteractor.h"

@implementation LAVentureInteractor

- (void)loadVentureList {
    // load data from serverManager, dataManager, etc.
    // call ventureListDidLoad after it's ready

    __weak typeof(self) _wself = self;
    [self.ventureDataManager getVentureListWithCompletionBlock:^(NSArray *ventureList, NSError *error) {
        [_wself.output didLoadVentureList:ventureList];
    }];
    
}

- (void)configApplicationFromVenture:(LAVenture*)venture {
    [self.ventureDataManager storeDataForVenture:venture];
}

@end
