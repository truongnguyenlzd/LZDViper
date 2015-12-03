//
//  ViewController.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/26/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVentureViewController.h"
#import "LAVenture.h"
#import "LAVenturePresenter.h"
#import "LADependencyManager.h"

@interface LAVentureViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property NSArray *ventureList;
@property (weak, nonatomic) IBOutlet UIButton *goHomeButton;
@property (weak, nonatomic) IBOutlet UIPickerView *venturePicker;

@end

@implementation LAVentureViewController

-(void)awakeFromNib {
    [self injectDependencies];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.eventHandler setupView];
}


#pragma mark - LAVentureViewInputProtocol

- (void)showLoadingActivity {
    NSLog(@"show loader");
}

- (void)hideLoadingActivity {
    NSLog(@"hide loader");
}

- (void)disableHomeButton {
    self.goHomeButton.enabled = NO;
}

- (void)enableHomeButton {
    self.goHomeButton.enabled = YES;
}

- (void)updateVenturesWithList:(NSArray *)venturesList {
    [self configVenturePicker];
    self.ventureList = venturesList;
}

- (void)showErrorWithMessage:(NSString *)messageString {
    NSLog(@"error: empty ventures list");
}


#pragma mark - IBActions

- (IBAction)goHomeAction:(id)sender {
    NSInteger selectedRow = [self.venturePicker selectedRowInComponent:0];
    [self.eventHandler didSelectVenture:self.ventureList[selectedRow]];
    
}


#pragma mark - UIPicker

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.ventureList.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    LAVenture *venture = self.ventureList[row];
    return venture.ventureName;
}


#pragma mark - helper methods

////WARNING: Glue code for creating wireframe. Can be removed when using conjunction with TYPHOON.
////Or we can create DI container by ourself like this demo.
////If a screen has multiple flow to another screen, this will be weird.
- (void)injectDependencies {
    [[LADependencyManager sharedInstance] injectDependencyForVentureModule:self];
}

- (void)configVenturePicker {
    self.venturePicker.delegate = self;
    self.venturePicker.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
