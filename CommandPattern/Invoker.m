//
//  Invoker.m
//  CommandPattern
//
//  Created by qian.zhang on 10/25/19.
//  Copyright © 2019 sendom.zhang. All rights reserved.
//

#import "Invoker.h"

@implementation Invoker

+ (instancetype)buttonWithType:(UIButtonType)buttonType command:(id<Command>)command {
    Invoker *Self = [super buttonWithType:buttonType];
    Self.command = command;
    return Self;
}

- (instancetype)initWithFrame:(CGRect)frame command:(id<Command>)command {
    if (self = [super initWithFrame:frame]) {
        self.command = command;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    return [self initWithFrame:frame command:nil];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    return [self initWithFrame:CGRectZero command:nil];
}

@end
