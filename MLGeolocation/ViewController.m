//
//  ViewController.m
//  MLGeolocation
//
//  Created by user on 16/5/6.
//  Copyright © 2016年 ly. All rights reserved.
//

#import "ViewController.h"
#import "MLGeolocation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //开启IP定位之前必须实现
    //[[MLGeolocation geolocation] setIPAddress:@"" withAK:@""];
    
    [[MLGeolocation geolocation] getCurrentLocations:^(NSDictionary *curLoc) {
        NSLog(@"%@",curLoc);
    } isIPOrientation:NO error:^(NSError *error) {
        
    }];
    
    [[MLGeolocation geolocation] getCurrentCity:^(NSMutableDictionary *locDic) {
        NSLog(@"%@",locDic);
    } error:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
