//
//  LAVentureInteractor.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAVenture.h"
#import "LAVentureDataManager.h"

@interface LAVentureInteractor : NSObject

@property LAVentureDataManager *ventureDataManager;

- (void)configApplicationFromVenture:(LAVenture*)venture;

@end
