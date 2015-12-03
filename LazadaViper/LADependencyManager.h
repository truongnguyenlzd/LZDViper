//
//  LADependencyManager.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAVentureViewController.h"

@interface LADependencyManager : NSObject

+(LADependencyManager *)sharedInstance;

- (void)injectDependencyForVentureModule:(LAVentureViewController*)ventureViewController;

@end
