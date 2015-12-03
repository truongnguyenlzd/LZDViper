//
//  LADependencyManager.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LADependencyManager.h"
#import "LAVenturePresenter.h"

@implementation LADependencyManager

+(LADependencyManager *)sharedInstance {
    static dispatch_once_t pred = 0;
    static LADependencyManager *instance = nil;
    dispatch_once(&pred, ^{
        instance = [[self alloc] init];
        
    });
    return instance;
}


- (void)injectDependencyForVentureModule:(LAVentureViewController*)ventureViewController {
    
    //Inject presenter for view
    LAVenturePresenter *venturePresenter = [[LAVenturePresenter alloc] init];
    ventureViewController.eventHandler = venturePresenter;
    
    //Inject wireframe for presenter
    LAVentureWireFrame *ventureWireFrame = [[LAVentureWireFrame alloc] init];
    ventureWireFrame.ventureViewController = ventureViewController;
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    LAWelcomeViewController *welcomeViewController = [storyboard instantiateViewControllerWithIdentifier:@"LAWelcomeViewController"];
    ventureWireFrame.welcomeViewController = welcomeViewController;
    venturePresenter.ventureWireFrame = ventureWireFrame;
    
    //Inject interator for presenter
    LAVentureInteractor *ventureInterator = [[LAVentureInteractor alloc] init];
    venturePresenter.ventureInteractor = ventureInterator;
    
    //Inject DataManager for Interator
    ventureInterator.ventureDataManager = [[LAVentureDataManager alloc] init];

    
}

@end
