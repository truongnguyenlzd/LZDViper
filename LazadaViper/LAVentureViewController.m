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

@interface LAVentureViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation LAVentureViewController

- (IBAction)goHomeAction:(id)sender {
    LAVenture *ventureSelected = [self getSelectedVenture];
    [self.eventHandler chooseVenture:ventureSelected];
}

-(LAVenture*)getSelectedVenture {
    LAVenture *ventureSelected = [[LAVenture alloc] init];
    NSInteger selectedRow = [self.venturePicker selectedRowInComponent:0];
    NSString *ventureString = [self.ventureList objectAtIndex:selectedRow];
    ventureSelected.ventureName = ventureString;
    ventureSelected.idVenture = @"12";//Just for demo
    return ventureSelected;
}

- (void)configVentureModule {
    [self injectDependency];
}

//WARNING: Glue code for creating wireframe. Can be removed when using conjunction with TYPHOON.
//Or we can create DI container by ourself like this demo.
//If a screen has multiple flow to another screen, this will be weird.
- (void)injectDependency {
    [[LADependencyManager sharedInstance] injectDependencyForVentureModule:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initDataForVenturePicker];
    [self configVenturePicker];
    [self configVentureModule];
}

- (void)initDataForVenturePicker {
    self.ventureList = @[@"Vietnam", @"Thailan", @"Malaysia"];
}

- (void)configVenturePicker {
    self.venturePicker.delegate = self;
    self.venturePicker.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UIPicker
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.ventureList.count;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.ventureList[row];
}

@end
