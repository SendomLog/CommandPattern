//
//  ViewController.m
//  CommandPattern
//
//  Created by qian.zhang on 10/25/19.
//  Copyright © 2019 sendom.zhang. All rights reserved.
//

#import "ViewController.h"

#import "Invoker.h"

#import "LoginCommand.h"
#import "ScanCodeCommand.h"

@interface ViewController ()

@property (nonatomic, strong) Invoker *i;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.i = [Invoker buttonWithType:(UIButtonTypeCustom) command:LoginCommand.new];
    
    self.i.frame = CGRectMake(100, 100, 100, 100);
    [self.i setTitle:@"Invoke" forState:(UIControlStateNormal)];
    [self.i addTarget:self action:@selector(invoke) forControlEvents:(UIControlEventTouchUpInside)];
    self.i.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.i];
    
    [self timer];
    
}

- (void)invoke {
    [self.i.command execute];
}


- (void)timer {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.i.command = ScanCodeCommand.new;
    });
}
@end
