//
//  VentureWireFrame.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVentureWireFrame.h"

@implementation LAVentureWireFrame

- (void)showWelcomeScreen {
    [self.ventureViewController.navigationController pushViewController:self.welcomeViewController animated:YES];
}


@end
