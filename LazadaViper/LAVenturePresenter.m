//
//  VenturePresenter.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVenturePresenter.h"

@implementation LAVenturePresenter

#pragma mark - LAVentureViewOutputProtocol

- (void)setupView {
    [self.view showLoadingActivity];
    [self.view disableHomeButton];
    [self.interactor loadVentureList];
}

- (void)didSelectVenture:(LAVenture *)venture {
    [self.wireframe eventWithVenture:venture];
}


#pragma mark - LAVentureInteractorOutputProtocol

- (void)didLoadVentureList:(NSArray *)ventureList {
    [self.view hideLoadingActivity];
    if (ventureList.count) {
        [self.view updateVenturesWithList:ventureList];
        [self.view enableHomeButton];
    } else {
        [self.view showErrorWithMessage:@"No ventures were loaded"];
        [self.view disableHomeButton];
    }
}

@end
