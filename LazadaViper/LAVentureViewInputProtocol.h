//
//  LAVentureViewInputProtocol.h
//  LazadaViper
//
//  Created by Sergey Evseev on 03/12/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

@protocol LAVentureViewInputProtocol <NSObject>

- (void)showLoadingActivity;
- (void)hideLoadingActivity;
- (void)updateVenturesWithList:(NSArray *)venturesList;
- (void)showErrorWithMessage:(NSString *)messageString;
- (void)disableHomeButton;
- (void)enableHomeButton;

@end
