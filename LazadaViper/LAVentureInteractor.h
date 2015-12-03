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
#import "LAVentureInteractorInputProtocol.h"
#import "LAVentureInteractorOutputProtocol.h"

@interface LAVentureInteractor : NSObject <LAVentureInteractorInputProtocol>

@property (nonatomic, weak) id <LAVentureInteractorOutputProtocol> output;

@property LAVentureDataManager *ventureDataManager;

- (void)configApplicationFromVenture:(LAVenture*)venture;

@end
