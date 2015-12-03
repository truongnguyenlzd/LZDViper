//
//  VenturePresenter.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAVentureProtocol.h"
#import "LAVentureWireFrame.h"
#import "LAVentureInteractor.h"

@interface LAVenturePresenter : NSObject<LAVentureProtocol>

@property LAVentureWireFrame *ventureWireFrame;
@property LAVentureInteractor *ventureInteractor;

@end
