//
//  ViewController.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LAVentureViewOutputProtocol.h"
#import "LAVentureViewInputProtocol.h"

@interface LAVentureViewController : UIViewController <LAVentureViewInputProtocol>

@property id <LAVentureViewOutputProtocol> eventHandler;

@end

