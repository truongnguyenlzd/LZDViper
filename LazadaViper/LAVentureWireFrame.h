//
//  VentureWireFrame.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAVentureViewController.h"
#import "LAWelcomeViewController.h"

@interface LAVentureWireFrame : NSObject

@property LAVentureViewController *ventureViewController;
@property LAWelcomeViewController *welcomeViewController;

- (void)showWelcomeScreen;

@end
