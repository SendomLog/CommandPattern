//
//  LoginCommand.m
//  CommandPattern
//
//  Created by qian.zhang on 10/25/19.
//  Copyright © 2019 sendom.zhang. All rights reserved.
//

#import "LoginCommand.h"

#import "LoginViewController.h"

@implementation LoginCommand

- (void)execute {
    UINavigationController *nav = ((UIWindow *)UIApplication.sharedApplication.windows.firstObject).rootViewController;
    
    LoginViewController *vc = [LoginViewController new];
    [nav pushViewController:vc animated:YES];
}

@end
