//
//  VenturePresenter.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAVentureViewOutputProtocol.h"
#import "LAVentureInteractorOutputProtocol.h"
#import "LAVentureWireFrameInputProtocol.h"
#import "LAVentureInteractorInputProtocol.h"
#import "LAVentureViewInputProtocol.h"

@interface LAVenturePresenter : NSObject <LAVentureViewOutputProtocol, LAVentureInteractorOutputProtocol>

@property (nonatomic, strong) id <LAVentureWireFrameInputProtocol> wireframe;
@property (nonatomic, strong) id <LAVentureInteractorInputProtocol> interactor;
@property (nonatomic, weak) id <LAVentureViewInputProtocol> view;

@end
