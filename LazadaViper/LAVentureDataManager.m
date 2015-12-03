//
//  LAVentureDataManager.m
//  LazadaViper
//
//  Created by Truong Nguyen on 11/27/15.
//  Copyright © 2015 LAZHCM10431. All rights reserved.
//

#import "LAVentureDataManager.h"
#import "LAVenture.h"

@implementation LAVentureDataManager

- (void)getVentureListWithCompletionBlock:(VentureListCompletionBlock)completionBlock {
    // fetching data from CoreData :)
    LAVenture *vietnam = [[LAVenture alloc] initWithId:1 andName:@"Vietnam"];
    LAVenture *thailand = [[LAVenture alloc] initWithId:2 andName:@"Thailand"];
    LAVenture *malaysia = [[LAVenture alloc] initWithId:3 andName:@"Malaysia"];
    
    completionBlock(@[vietnam, thailand, malaysia], nil);
}

- (void)storeDataForVenture:(LAVenture*)venture {
    //Can be store the information of venture into NSUserDefault or CoreData.
    //Should be build another layer: DataStore to abstract the implementation
    NSLog(@"###Already store data of venture into DataStore");
}

@end
