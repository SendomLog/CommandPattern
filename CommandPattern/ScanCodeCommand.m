//
//  ScanCodeCommand.m
//  CommandPattern
//
//  Created by qian.zhang on 10/25/19.
//  Copyright © 2019 sendom.zhang. All rights reserved.
//

#import "ScanCodeCommand.h"

#import "ScanCodeViewController.h"

@implementation ScanCodeCommand

- (void)execute {
    UINavigationController *nav = ((UIWindow *)UIApplication.sharedApplication.windows.firstObject).rootViewController;
    
    [nav pushViewController:ScanCodeViewController.new animated:YES];
}

@end
