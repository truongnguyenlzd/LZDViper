//
//  LAVentureDataManager.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVentureDataManager.h"

@implementation LAVentureDataManager

- (void)storeDataForVenture:(LAVenture*)venture {
    //Can be store the information of venture into NSUserDefault or CoreData.
    //Should be build another layer: DataStore to abstract the implementation
    NSLog(@"###Already store data of venture into DataStore");
}

@end
