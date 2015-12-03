//
//  ViewController.h
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LAVentureProtocol.h"

@interface LAVentureViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIPickerView *venturePicker;
@property NSArray *ventureList;
@property id<LAVentureProtocol> eventHandler;

@end

