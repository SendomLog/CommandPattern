//
//  Invoker.h
//  CommandPattern
//
//  Created by qian.zhang on 10/25/19.
//  Copyright © 2019 sendom.zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : UIButton

@property (nonatomic, strong) id<Command> command;

+ (instancetype)buttonWithType:(UIButtonType)buttonType command:(__nullable id<Command>)command;

- (instancetype)initWithFrame:(CGRect)frame command:(__nullable id<Command>)command NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
