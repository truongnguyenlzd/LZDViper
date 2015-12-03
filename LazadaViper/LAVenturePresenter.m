//
//  VenturePresenter.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVenturePresenter.h"

@implementation LAVenturePresenter

-(void)chooseVenture:(LAVenture *)venture {
    
    //Configue application from data venture
    [self.ventureInteractor configApplicationFromVenture:venture];
    
    //navigation to welcome screen
    [self.ventureWireFrame showWelcomeScreen];
}

@end
