//
//  LAVentureDataManager.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAVenture.h"

typedef void (^VentureListCompletionBlock)(NSArray *ventureList, NSError *error);

@interface LAVentureDataManager : NSObject

- (void)getVentureListWithCompletionBlock:(VentureListCompletionBlock)completionBlock;
- (void)storeDataForVenture:(LAVenture*)venture;

@end
